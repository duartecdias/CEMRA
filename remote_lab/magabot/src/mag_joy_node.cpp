#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>
#include <math.h>

#define _USE_MATH_DEFINES
#define pubName "cmd_vel"
#define subName "joy"

class XboxControl
{
public:
  XboxControl();

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);
  
  ros::NodeHandle nh_;

  int linear_, angular_;
  int l_scale_, a_scale_;
  int select, prevSelect;
  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;
  
};

XboxControl::XboxControl():
  linear_(1),
  angular_(1), 
  select(0),
  prevSelect(0)
{
  nh_.param("select", select, select);
  nh_.param("axis_linear", linear_, linear_);
  nh_.param("axis_angular", angular_, angular_);

  vel_pub_ = nh_.advertise<geometry_msgs::Twist>(pubName, 1);  
  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>(subName, 10, &XboxControl::joyCallback, this);
}

void XboxControl::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  geometry_msgs::Twist motors;
  double lin, ang, vx, vy, wz;
  int nextSelect;

  nextSelect = joy->buttons[6];

  if(prevSelect != nextSelect){
    if(prevSelect == 0){
      select = !select;
      prevSelect = 1;
    } else {
      prevSelect = 0;
    }
  }

  if(select == 0) {
    lin = joy->axes[1]; // axis Y
    ang = joy->axes[0]; // axis X
  }
  else{
    lin = joy->axes[7];
    ang = joy->axes[6];
  }

  vx = (((30.0/3900.0)/0.00332)*2.0*3.14159*0.0463)*lin;
  vy = 0;
  wz= - (((30.0/3900.0)/0.00332)*2.0*3.14159*0.0463)*(2/0.355)*ang;
  
  motors.linear.x = vx;
  motors.linear.y = vy;
  motors.angular.z = wz;

  vel_pub_.publish(motors);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "xboxControl");
  XboxControl xboxControl;

  ros::spin();
}

