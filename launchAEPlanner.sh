#!/bin/bash

echo "launch AEPlanner necessary"

source ~/catkin_ws/devel/setup.bash

#roslaunch rrtplanner rrtplanner.launch
gnome-terminal -- gnome-terminal \
    --tab --title="octomap_server" -e "roslaunch rpl_exploration octomap_server.launch"\
    --tab --title="aeplanner" -e "roslaunch aeplanner aeplanner_nodelet.launch"\
    --tab --title="fly_to" -e "rosrun rpl_exploration fly_to"\
    --tab --title="rpl_exp." -e "rosrun rpl_exploration rpl_exploration"\
    --tab --title="rrtplanner" -e "roslaunch rrtplanner rrtplanner.launch"\
    --tab --title="pigain" -e "roslaunch pigain pig.launch"
 
exit 0
