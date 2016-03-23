#!/bin/sh
# Installs the required packages and nodes for the JetduinoBot
cd ~/
_dir="JetduinoBot/src"
# Check to make sure that the JetduinoBot catkin directory exists
[ ! -d "$_dir" ] && { echo "Error: Directory $_dir not found.\nPlease run createJetduinoBotWS.sh to create the JetduinoBot catkin workspace."; exit 2; }
# Install TurtleBot from repository
sudo apt-get install ros-indigo-rocon-remocon \
ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs \
ros-indigo-collada-urdf -y

cd ~/JetduinoBot/src
##git clone https://github.com/jetsonhacks/turtlebot.git
##git clone https://github.com/jetsonhacks/turtlebot_create.git
##git clone https://github.com/jetsonhacks/turtlebot_interactions.git
# This is to get rviz to work; Apparently there's an issue in earlier versions not
# parsing collada file formats correctly under ARM
##git clone https://github.com/jetsonhacks/robot_model.git
# This fixes an issue with navigation - laser map of RGBD camera was out of bounds
##git clone -b laser_centered https://github.com/jetsonhacks/slam_gmapping.git
cd ..
catkin_make
/bin/echo -e "\e[1;32mJetduinoBot Software Installed.\e[0m"

