# taticoma
The taticoma robot source code.

# Памятка
## Команды
График нод:
```bash
rqt_graph
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

Проверка:
```bash
source devel/setup.bash
echo $ROS_PACKAGE_PATH
```

## XV11 Lidar

Connection:
UART 3.3V
- VIN 3.3v red
- GND black
- RX brown
- TX orange (transmit from laser)


Драйвер:
```bash
sudo apt-get install ros-<distro>-xv-11-laser-driver
```

Драйвер вручную:
```bash
cd catkin_ws/src
git clone https://github.com/rohbotics/xv_11_laser_driver.git
cd ..
catkin_make
source devel/setup.bash
```
Запуск:
```bash
roscore
rosrun xv_11_laser_driver neato_laser_publisher _port:=/dev/ttyUSB0
rosrun xv_11_laser_driver neato_laser_publisher _port:=/dev/ttyUSB0 _firmware_version:=2
```
Rviz:
```bash
rosrun rviz rviz
```
Edit "Fixed Frame" value (top-left in rviz window).  Click where it says, "map" and enter "/neato_laser".
Click on the "Add" button (bottom-left in rviz window) and select "LaserScan" from the list.
Expand LaserScan (in left pane of rviz window) and click to the right of "Topic" and select "/scan" from the drop-down list.


## Raspberry wifi
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
