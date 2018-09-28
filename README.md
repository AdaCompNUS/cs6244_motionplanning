# CS6244 Motion Planning and Control

Autonomous driving simulator for CS6244 course project

## Set up the Simulator
The simulator has only been tested under the following system settings. There is no guarantee that it will work in other variants.
To avoid unnessary difficulties, we suggest that you to follow the instructions below closely.

### 1. Install Ubuntu 16.04 (Recommended)

Install the recommended Ubuntu version on a clean partition of the hard disk. The following tutorial gives you an example on how to install Ubuntu along with Windows.

http://www.everydaylinuxuser.com/2015/11/how-to-install-ubuntu-linux-alongside.html


### 2. Install ROS kinetic (only supported by Ubuntu 16.04 and Ubuntu 15.10)

#### Install
Note that our simulator runs in ROS kinetic. Please make sure you choose the correct version.

The following link gives you detailed instructions on how to install ROS indigo on Ubuntu.
(Please choose "Desktop-Full Install")

http://wiki.ros.org/kinetic/Installation/Ubuntu

#### Tutorials
If you are new to ROS, I suggest you go through a quick tutorial on the website
before you dig into the simulator.

http://wiki.ros.org/ROS/Tutorials#ROS_Tutorials

#### Rosbuild
Our simulator follows rosbuild, so please choose the right version when you go through 
the tutorial.

### 3. Clone the packges from this github repo

```shell
git clone https://github.com/AdaCompNUS/cs6244_motionplanning.git
```

To do this, you have to install *git* first, please do 

```shell
sudo apt install git
```

Alternatively, you can direclty download the *zip* file

### 4. Add the package path to ROS system path
Add your path to $ROS_PACKAGE_PATH, so the system can find it.
You can do it as follows:

```shell
vim ~/.bashrc
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:[your path to]/cs6244_motionplanning/
source ~/.bashrc
```

### 5. Build the packages

Before you build the packages, you have to install two additional packages first. Please do
```shell
sudo apt install ros-kinetic-map-server ros-kinetic-fake-localization
```

```shell
cd [your path to]/cs6244_motionplanning/ 
bash setup.bash
```

### 6. Install pygame

```shell
sudo apt-get install python-pygame
```

### 7. Try a simple task

Now you are going to try a simple task of using keyboard to drive a car
in the simulator.

Steps to follow:

1. `roslaunch autocar test.launch`

2. make sure the small pygame window in on the top of your screen

3. Now you can drive the car in the simulator using the arrow keys. 

### 8. Troubleshooting

1. Please do not use Anaconda python environment. ROS is not very compatible with Anaconda. Otherwise you might meet weird bugs. Or if you successfully managed to run the simulator correctly with it, please share your hacks with me :-)
2. Please test your setting again by running `roslaunch autocar data1.launch`.  If you met numpy errors, please upgrade your numpy version by

```shell
sudo apt install python-pip
sudo pip install --upgrade numpy
```

# Highway Task

Now you've successfully set up the simulator for your hw3. Congrats! 

The next step is to get your hands on the assignment. Please go to [this sub-directory](https://github.com/AdaCompNUS/cs6244_motionplanning/tree/master/autocar/scripts/highway) for more information.
