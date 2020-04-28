#!/usr/bin/env python

import sys
import rospy
from std_msgs.msg import String
from request.srv import *

def joke_producer(x):
    rospy.wait_for_service('serving_jokes')
    try:
        joke_fun = rospy.ServiceProxy('serving_jokes', joke) #returns a handle which can be used as a normal function
        resp1 = joke_fun(x.data) #getting the response
        return String(resp1.joke_return) #returning the response
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e #prints the exceptions
#This function is called when the number of argumnets passed by the user don't match
def usage():
    return "need an argument" 

if __name__ == "__main__":
    if len(sys.argv) == 2: # checks if the number of argumnets is correct
        x = String(sys.argv[1])
    else:
        print usage()
        sys.exit(1)
    print "Requesting %s"%(x) # requests the joke
    print "%s "%(joke_producer(x)) #prints the joke