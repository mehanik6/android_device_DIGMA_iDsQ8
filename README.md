AllWinner a31 DIGMA iDsQ8

TWRP touch recovery
-------------

TWRP recovery - device: http://4pda.ru/forum/index.php?showtopic=545046&view=findpost&p=59297008


Flash CWM or TWRP
---------

Run following commands

adb push recovery.img /sdcard/

adb shell "cat /mnt/sdcard/recovery.img > /dev/block/nandg; sync"
