FROM rosev3-master

RUN sudo apt-get -y install curl
RUN sudo curl https://raw.githubusercontent.com/IntelRealSense/librealsense/rosdebian/scripts/enable_kernel_sources.sh >/tmp/enable_kernel_sources.sh
RUN sudo bash /tmp/enable_kernel_sources.sh

RUN sudo apt-get -y update
RUN sudo apt-get -y dist-upgrade

RUN sudo apt-get -y install ros-kinetic-librealsense
RUN sudo apt-get -y install ros-kinetic-realsense-camera

RUN sudo apt-get -y install ros-kinetic-depthimage-to-laserscan
RUN sudo apt-get -y install ros-kinetic-gmapping

COPY ./launch /home/ros/launch

#RUN sudo apt-get -y install ros-kinetic-rtabmap-ros
#RUN sudo apt-get -y install ros-kinetic-usb-cam
