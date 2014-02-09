#!/system/bin/sh

# Restart rild
   dsds=`getprop persist.multisim.config`
   multirild=`getprop ro.multi.rild`
   setprop rild.libpath "/system/lib/libril-qc-qmi-1.so"

   # stop rild 1
   stop ril-daemon

   # stop rild 2
   case "$multirild" in
       "true")
           stop ril-daemon1
   esac

   # start rild 1
   start ril-daemon

   # start rild 2
   case "$multirild" in
       "true")
           start ril-daemon1
   esac

exit 0
