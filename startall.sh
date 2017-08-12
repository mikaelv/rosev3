sudo ip addr add 192.168.10.120/24 dev enp0s20u1u1
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o wlx74da388bd929 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -o wlx74da388bd929 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i enp0s20u1u1 -o wlx74da388bd929 -j ACCEPT
sudo iptables -A FORWARD -o enp0s20u1u1 -i wlx74da388bd929 -j ACCEPT

roscore &
cd ~/projects/rosev3/gripp3r/ev3_launch/launch
roslaunch ./motors.launch ev3_hostname:=ev3dev &

cd ~/projects/rosev3/r200/launch
roslaunch ./r200.launch &

rosrun teleop_twist_keyboard teleop_twist_keyboard.py
