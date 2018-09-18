export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$PWD
cd autocar; rosmake; cd ..
cd mpav
cd MPAVUtil; rosmake; cd ..
cd Steering_Control; rosmake; cd ..
