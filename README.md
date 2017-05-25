mobile tracking in 3d-space
========================
#####read live sensor data via FILE and ADB
set ADB logcat buffer (10MB):
```bash
adb logcat -G 10M
```
clear ADB buffer:
```bash
adb logcat -c
```
create fifo for file:
```bash
mkfifo pipe && exec 7<>pipe
```
ADB logcat forward to pipe:
```bash
adb logcat -s AV-SDK | grep --line-buffered MotionCapturing | sed -u s/\.\*MotionCapturing://g > pipe
```

#####read live sensor data via FILE and TCP/IP
- use same comands above
```bash
nc -k -l 4000 > pipe 
```

#####data construction, which are calculated in the mobile device
```
String data = accelerometerValues + "," + magneticValues + "," + gyroscopeValues + ",:," + azimuth + "," + pitch + "," + roll;
```





========================
