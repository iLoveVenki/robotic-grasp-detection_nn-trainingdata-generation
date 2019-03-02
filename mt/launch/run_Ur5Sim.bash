#!/bin/bash
xterm -hold -e "roscore" &
sleep 3
xterm -hold -e "roslaunch ur_gazebo ur5.launch limited:=true" &
sleep 5
xterm -hold -e "roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch sim:=true limited:=true" &
sleep 2
xterm -hold -e "roslaunch ur5_moveit_config moveit_rviz.launch config:=true" &
sleep 3
xterm -hold -e "roslaunch mt tf_transform.launch" &
#--------------------#
#--- We are done! ---#
#--------------------#
echo "Wait for processes ...."
wait