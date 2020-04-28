#include "ros/ros.h"
#include "std_msgs/String.h"
#include "request/joke.h"
#include <cstring>

/*This function is called as soon as the joke service is requested*/
bool serve(request::joke::Request  &req,
         request::joke::Response &res)
{
  // the choices are dad_joke and tech_joke. Otherwise, the joke is not offered
  if (strncmp("dad_joke", req.joke_type.data(), 8) == 0)
	  res.joke_return = "How do you make holy water? You boil the hell out of it.";
  else if (strncmp("tech_joke", req.joke_type.data(), 9) == 0)
	  res.joke_return = "There's a band called 1023MB. They haven't had any gigs yet.";
  else
	  res.joke_return = "Type 'dad_joke' or 'tech_joke' to get a joke";
	  
  // Prints the request and the response
  ROS_INFO("request: x = %s", req.joke_type.data());
  ROS_INFO("sending back response: [%s]", res.joke_return.data());
  return true;
}

int main(int argc, char **argv)
{
  //Creates the node and gives it a name joke_server
  ros::init(argc, argv, "joke_server");
  ros::NodeHandle n; 

  ros::ServiceServer service = n.advertiseService("serving_jokes", serve); //service is created and advertiesd over ROS
  ROS_INFO("The jokes are ready to be served.");
  ros::spin();

  return 0;
}