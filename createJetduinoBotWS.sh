#!/bin/sh
# Create a ROS catkin workspace for JetduinoBot
# JetduinoBot is a ROS robot that uses the NVIDIA Jetson TK1 and the Jetduino
# interface board.
# This script assumes that ROS Indigo has already been installed on the Jetson
mkdir -p ~/jetduinoBot/src
cd ~/jetduinoBot/src
catkin_init_workspace
cd ~/jetduinoBot
catkin_make


