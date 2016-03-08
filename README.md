MobileTrackingIn3dSpace
========================
#####READ VIA FILE AND ADB
for file input read via ADB:
```bash
mkfifo pipe && exec 7<>pipe
```
ADB logcat command
adb logcat -s AV-SDK | grep MotionCapturing | cut -d ":" -f6 > pipe

#####READ VIA 

========================
