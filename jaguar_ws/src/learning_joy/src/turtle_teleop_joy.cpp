 #include <ros/ros.h>
 #include <geometry_msgs/Twist.h>
 #include <sensor_msgs/Joy.h>
 
#define BOT_A 0
#define BOT_B 1
#define BOT_X 2
#define BOT_Y 3
#define BOT_LB 4
#define BOT_RB 5
#define BOT_BACK 6
#define BOT_START 7
#define BOT_L3 9
#define BOT_R3 10

#define BOT_LS_HOR 0
#define BOT_LS_VER 1
#define BOT_LT 2
#define BOT_RS_HOR 3
#define BOT_RS_VER 4
#define BOT_RT 5
#define BOT_TRASFRENTE 6
#define BOT_BAIXOCIMA 7

 class TeleopTurtle
 {
 public:
   TeleopTurtle();
 
 private:
   void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);
 
   ros::NodeHandle nh_;

  bool flagRB, flagLB;
  int linear_, angular_;
   double l_scale_, a_scale_, marcha;
  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;
 
};


TeleopTurtle::TeleopTurtle():
  linear_(1),
  angular_(2)
{

  nh_.param("axis_linear", linear_, linear_);
  nh_.param("axis_angular", angular_, angular_);
  nh_.param("scale_angular", a_scale_, a_scale_);
  nh_.param("scale_linear", l_scale_, l_scale_);


  vel_pub_ = nh_.advertise<geometry_msgs::Twist>("drrobot_cmd_vel", 1);


  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopTurtle::joyCallback, this);

 }
 
 void TeleopTurtle::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
 {
   geometry_msgs::Twist cmdvel_;

   if (joy->buttons[BOT_RB]==1 && flagRB==true)
	{	
	flagRB = false;	
	marcha += 0.34;
	if (marcha>1)
		{ marcha = 1;}
	}else if(joy->buttons[BOT_RB] == 0 && flagRB == false)
   		{ flagRB = true; }

   if (joy->buttons[BOT_LB]==1 && flagLB==true)
{	
	flagLB = false;	
	marcha -= 0.34;
	
	if (marcha<=0)
		{ marcha = 0;}

	}else if(joy->buttons[BOT_LB] == 0 && flagLB == false)
		{ flagLB = true; }

   cmdvel_.angular.z = marcha*joy->axes[BOT_LS_HOR];	//Motor Giro angular
   cmdvel_.linear.x = marcha*joy->axes[BOT_LS_VER];	//Motor pra tras/frente
   cmdvel_.linear.y = marcha*joy->axes[BOT_TRASFRENTE]; //Pata de tras
   cmdvel_.linear.z = marcha*joy->axes[BOT_BAIXOCIMA]; //pata da frente

   
   vel_pub_.publish(cmdvel_);
 }
 
 
int main(int argc, char** argv)
{
  ros::init(argc, argv, "teleop_turtle");
  TeleopTurtle teleop_turtle;
 
  ros::spin();
}
