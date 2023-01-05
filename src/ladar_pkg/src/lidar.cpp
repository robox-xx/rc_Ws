#include "lidar.h"

/**
 * @brief: 雷达初始化角度数据 用于将雷达的距离数据转换成x和y
 * @param {*}
 * @return {*}
 * @author: bonbon
 */
void Lidar::init()
{
    // 初始化角度数据   
    for(int i = 0;i < DATA_NUM;i++)
    {
        THETA[i] =(-3*PI)/4 + ANGLE_INCREMENT * i;
    }   
}

/**
 * @brief: 获取数据
 * @param 
 * @return {*}
 * @author: bonbon
 */
void Lidar::getData(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    nowData = std::vector<float>(scan->ranges);
}

/**
 * @brief: 预发布 将发布的内容赋值
 * @param 
 * @return {*}
 * @author: bonbon
 */
void Lidar::prePublish(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    //发布滤波后的数据
    result.header.stamp = ros::Time::now();
    result.header.frame_id = "laser";
    result.angle_min = (-3*PI)/4;
    result.angle_max = ( 3*PI)/4;
    result.angle_increment = scan->angle_increment;
    result.time_increment = scan->time_increment;
    result.scan_time = scan->scan_time;
    result.range_min = scan->range_min;
    result.range_max = scan->range_max; 

    result.ranges = std::vector<float>(nowData);
    result.intensities = std::vector<float>(scan->intensities);
    /*  下面这种写法在rviz会显示一个贼酷炫的螺旋hhh，虽然我感觉没有什么区别
    for(int i = 0; i < DATA_NUM; i++)
    {
        result.ranges.push_back(nowData[i]);
        result.intensities.push_back(scan->intensities[i]);
    }
    */
}
Lidar::Lidar()
{

}

Lidar::~Lidar()
{
    
}