FROM rosev3-master

RUN sudo apt-get -y update

RUN sudo apt-get install -y ros-indigo-controller-manager \
ros-indigo-teleop-twist-keyboard

#RUN mkdir -p ~/catkin-ws/src
#RUN git clone https://github.com/pirobot/rbx1.git ~/catkin-ws/src/rbx1
#RUN cd ~/catkin-ws/src/rbx1 && git checkout indigo-devel
#RUN bash -c "source /ros_entrypoint.sh && cd ~/catkin-ws && catkin_make"
#RUN bash -c "source ~/catkin-ws/devel/setup.bash && cd ~/catkin-ws && rospack profile"
#RUN echo "source ~/catkin-ws/devel/setup.bash" | tee >> ~/.bashrc

COPY ./ev3_launch /home/ros/catkin-ws/src/ev3_launch
