#!/system/bin/sh

# Restart rild
dsds=`getprop persist.multisim.config`
setprop rild.libpath "/system/lib/libril-qc-qmi-1.so"
stop ril-daemon
start ril-daemon
if [ "$dsds" = "dsds" ]; then
    start ril-daemon1
fi

exit 0
