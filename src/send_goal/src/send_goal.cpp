#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "std_msgs/String.h"
#include <std_msgs/Float64MultiArray.h>
#include <sensor_msgs/LaserScan.h>
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
 
move_base_msgs::MoveBaseGoal goal;
void goalCallback(const std_msgs::Float64MultiArray the_best_way){
      goal.target_pose.pose.position.x = the_best_way.data[0];
      goal.target_pose.pose.position.y = the_best_way.data[1];
      goal.target_pose.pose.position.z = the_best_way.data[2];
}


int main(int argc, char** argv){
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "send_goal");

    //tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);
    
    //wait for the action server to come up
    while(!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
    }
 
    ros::NodeHandle nh;
    ros::Subscriber send_goal = nh.subscribe<std_msgs::Float64MultiArray>("laser_the_best_way_to_shoot",10 ,goalCallback);


    //we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "base_link";
    goal.target_pose.header.stamp = ros::Time::now();
 
    goal.target_pose.pose.position.x = 1.0;
    goal.target_pose.pose.orientation.w = 1.0;
 
    ROS_INFO("Sending goal");
    ac.sendGoal(goal);
 
    ac.waitForResult();
 
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("Hooray, the base moved 1 meter forward");
    else
        ROS_INFO("The base failed to move forward 1 meter for some reason");
 
    return 0;
}