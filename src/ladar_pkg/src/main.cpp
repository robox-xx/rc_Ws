#include<iostream>
// ros
#include <ros/ros.h>
#include "std_msgs/String.h"
#include <std_msgs/Float64MultiArray.h>
#include <sensor_msgs/LaserScan.h>
#include<sensor_msgs/PointCloud2.h>



#include "lidar.h"
#include "filter_my.h"


using namespace std;

ros::Publisher ladar_pub;
ros::Publisher whereToshoot;

Lidar ladar;
Filter filter;

std_msgs::Float64MultiArray the_best_way;

void LidarCallback(const sensor_msgs::LaserScan::ConstPtr &scan)
{
    //获取雷达数据
    ladar.getData(scan);
    
    //对雷达数据进行滤波
    //1.去除离群点
    filter.delete_outlier(ladar.nowData,ladar.THETA, 0.5,3);
    
    //2.分离是圆弧的连续段数据
    filter.get_circle(ladar.nowData, ladar.THETA, 0.015);
    
    //3.滤掉点数过少的连续段
    filter.num_less_filter(ladar.nowData,5);
    
    //4.滤掉点数过多的连续段
    filter.num_more_filter(ladar.nowData,100);

    //5.获得连续段
    std::vector<float> start_index; //连续段的起始坐标
    std::vector<float> end_index;   //连续段的终止坐标
    find_continue(ladar.nowData, start_index, end_index);
    //测试用12月4日16.41
    // ROS_INFO("start:%ld",start_index.size());
    // ROS_INFO("end:%ld",end_index.size());
    
    if(start_index.size()!=0)
    {
        for(int i=0;i<=start_index.size()-1;i++)
        {
            ROS_INFO("start:%lf,end:%lf",start_index[i],end_index[i]);
        }
    //6.拟合圆心
        vector< vector<float> > disR;//(start_index.size(),vector<float>(3))
        output_circle(start_index, end_index, ladar.nowData, disR);
        int num = end_index.size();
        for(int i=0;i<num;i++)
        {
            ROS_INFO("第%d个圆柱的,x值为:%f,y值为:%f,圆心与机器人坐标原点距离为为:%f",i+1,disR[i][0],disR[i][1],disR[i][2]); 
        }
        
    //7.寻找最好的射环点
        float best_num=0;
        float best_num_x=0;
        float best_num_y=0;
        
        find_best_data(disR, best_num, best_num_x, best_num_y);
        if(best_num_x>0 && best_num_y>0)
        {
            best_num_x = best_num_x - 0.8;
            best_num_y = best_num_y - 0.8;
        }
        else if(best_num_x>0 && best_num_y<0)
        {
            best_num_x = best_num_x - 0.8;
            best_num_y = best_num_y + 0.8;
        }
        else if(best_num_x<0 && best_num_y>0)
        {
            best_num_x = best_num_x + 0.8;
            best_num_y = best_num_y - 0.8;
        }
        else if(best_num_x<0 && best_num_y<0)
        {
            best_num_x = best_num_x + 0.8;
            best_num_y = best_num_y + 0.8;
        }
        
        best_num = abs(best_num - sqrt(0.8*0.8+0.8*0.8));
        // ROS_INFO("最好的射环点在x:%f,y:%f", best_num_x,best_num_y);
        
        the_best_way.data.push_back(best_num_x);
        the_best_way.data.push_back(best_num_y);
        the_best_way.data.push_back(0);
        // ROS_INFO("我发出最好的射击位置是  x:%f,y:%f,z:%f",best_num_x, best_num_y, best_num);
        whereToshoot.publish(the_best_way);
        ROS_INFO("我发出最好的雷达射击位置是x:%f,y:%f",the_best_way.data[0],the_best_way.data[1]);
        the_best_way.data.clear();
        
    }
    else{
        printf("no circle!!!!");
    }
    
    //发布点云，使其可视化
    ladar.prePublish(scan);
    ladar_pub.publish(ladar.result);

}

int main(int argc, char *argv[])
{
    
    setlocale(LC_ALL, "");
    ros::init(argc,argv,"ladar");

    ros::NodeHandle nh;

    ros::Rate loop_rate(10);
    // serialInit();
    ros::Subscriber subscriber = nh.subscribe("/scan",1 ,LidarCallback);
   
    while(ros::ok())
    {
        ros::spinOnce();
        //发布雷达当前数据  
        ladar_pub = nh.advertise<sensor_msgs::LaserScan>("/now", 10);
        //发布最好射击位置的数据，第一个数据为x,第二个数据为y，第三个数据是距离
        whereToshoot = nh.advertise<std_msgs::Float64MultiArray>("laser_the_best_way_to_shoot",100);
        
        // ladar_pub = nh.advertise<sensor_msgs::PointCloud2>("/now", 10);
        loop_rate.sleep();
    }    
    ros::spin();
    return 0;
}








































 // if(cloud_filter->points.size()>=3){
        // pcl::SampleConsensusModelCircle2D<pcl::PointXYZ>::Ptr model_circle2D(new pcl::SampleConsensusModelCircle2D<pcl::PointXYZ>(cloud_filter));	//选择拟合点云与几何模型cloud_filter
        // pcl::RandomSampleConsensus<pcl::PointXYZ> ransac(model_circle2D);
        // ransac.setDistanceThreshold(0.01);
        // ransac.setMaxIterations(10000);	
        // ransac.computeModel();
        // vector<int> inliers;
        // ransac.getInliers(inliers);

        // pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_circle(new pcl::PointCloud<pcl::PointXYZ>);		
        // pcl::copyPointCloud<pcl::PointXYZ>(*cloud_filter, inliers, *cloud_circle);
        
        // //将pcl点云转换到ros消息对象
        // pcl::toROSMsg(*cloud_circle, output_msg);

        // Eigen::VectorXf coefficient;
	    // ransac.getModelCoefficients(coefficient);
        

        // d = 1000*sqrt(coefficient[0]*coefficient[0]+coefficient[1]*coefficient[1]);
        // now_angle = atan(coefficient[1]/coefficient[0])*(180/3.1415926);
        // ROS_INFO("圆的中心点到雷达距离为%f", d/1000);
        // ROS_INFO("距离的角度是%f", now_angle);printf("6");
        // // ROS_INFO("圆的半径为%f", coefficient[2]);
        // // ROS_INFO("圆心的x为:%f,圆心的y为:%f", coefficient[0],coefficient[1]);
    
//检查用 12月4日
    // vector<float> range = ladar.nowData;
    // int num1 =range.size();
    // for(int i=0;i<num1;i++)
    // {
    //     float dis = range[i];
    //     if(dis>0.1&&dis<10){
    //         ROS_INFO("i = %d,dis = %lf",i,dis); 
    //     }
    //     else
    //     {
    //         continue;
    //     }
               
    // }    
    
    //测试用12月4日17.01
    // vector<float> xyRc(3,0);
    // vector<float> circle1(DATA_NUM);
    // for(int j=0;j<DATA_NUM;j++)
    // {
    //     if(j>=start_index[0] && j<end_index[0])
    //         {
    //             circle1[j]=ladar.nowData[j];
    //             // ROS_INFO("nowdata is %lf",ladar.nowData[j]);
    //         }
    //         else
    //         {
    //             circle1[j]=0;
    //         }

    // }
    // find_circle_center(circle1,xyRc);
    // ROS_INFO("第1个圆柱的,x值为:%f,y值为:%f,圆心和机器人坐标原点距离为:%f",xyRc[0],xyRc[1],xyRc[2]);