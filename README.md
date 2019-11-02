# taticoma
The taticoma robot source code.

![ttcm](ttcm.png)

# Not to forget

## PS3Joy launch

PS3 joystick + 6 channels feedback
```bash
sudo bash 
rosrun ps3joy ps3joy_node.py --inactivity-timeout=1000000
```
xorg disable act like a mouse
```
#!/bin/bash
props=`xinput list-props 15`
# echo "$props"
xinput set-prop 15 142 0
```

## Launch

Only Rviz + robot state publisher: 
```bash
roslaunch taticoma_description display_model.launch
```

Start all + Rviz: 
```bash
roslaunch taticoma_description bring_up_rviz.launch
```

Start all (Raspberry): 
```bash
roslaunch taticoma_description bring_up_pi.launch
```

## Some usefull ROS cmd

```bash
rqt
rqt_graph
rosservice list
rostopic list
rostopic pub
```
## Bluetooth dongle + Ps3joy

Notes:
```bash
sudo sixpair
sudo sixad -s
hciconfig
sudo hciconfig hcio up
rfkill unblock all
```
## Dynamixel

Controllers:
```bash
dynamixel_setup/launch/controller_manager.launch
dynamixel_setup/launch/controller_spawner.launch
```

## Workspace

Переменные окружения ROS:
```bash
printenv | grep ROS
source /opt/ros/<distro>/setup.bash
```

Создание рабочего пространства:
```bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
```
New package:
```bash
cd ~/catkin_ws
catkin_create_pkg my_new_package
cd src/my_new_package
```

Проверка:
```bash
source devel/setup.bash
echo $ROS_PACKAGE_PATH
```

## Raspberry wifi+ssh
Список сетей:
```bash
sudo iwlist wlan0 scan | grep ESSID
```
Сеть и пароль:
```bash
wpa_passphrase SSIDname MySuperPassword

network={
ssid="SSIDname"
#psk="MySuperPassword"
psk=8263d9d055495146b11a37ee65018796025638ba76525666b38f8f0216eed224
}

sudo bash
cd /etc/wpa_supplicant
wpa_passphrase Amperka mega2560 >> wpa_supplicant.conf
```
Работает ли SSH?:
```bash
sudo systemctl status sshd
```
Коннект по SSH:
```bash
ssh user@adress
ssh ubuntu@192.168.88.250
```

## Raspberry autostart + vnc

auto.sh bash script autorun add and remove:
```bash
#! /bin/bash
xterm -hold -e x11vnc -usepw -forever -geometry 800x480 -scale 1.2x1.2
xterm -e roscore
$SHELL
```
## Control ROS distantly

переменные окружения, `roscore` только на мастере.
```
nano ~/.bashrc 
source ~/.bashrc
```

```
export ROS_HOSTNAME=localhost
export ROS_MASTER_URI=http://localhost:11311
```

work:
```bash
export ROS_MASTER_URI=http://192.168.88.250:11311
export ROS_IP=192.168.88.250
export ROS_MASTER_URI=http://192.168.88.250:11311
export ROS_IP=192.168.88.X
```
home:
```bash
export ROS_MASTER_URI=http://192.168.1.8:11311
export ROS_IP=192.168.1.8
export ROS_MASTER_URI=http://192.168.1.8:11311
export ROS_IP=192.168.1.2
```
