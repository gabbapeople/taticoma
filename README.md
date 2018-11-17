# taticoma
The taticoma robot source code.

# Памятка
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
- RX brouwn
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
```
