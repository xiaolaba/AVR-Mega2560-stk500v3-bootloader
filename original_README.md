# Arduino-stk500v2-bootloader
STk500v2 bootloader

I forked it in order to make it compile with gcc7.3 and to be able to disable the embedded monitor.

Reasons for disabling the monitor:
 * The embedded monitor allows to dump the memory which may reveal information that should be kept secret
 * The monitor can interfere with flashing in some cases
 * Size

**Building**

Build a boot loader for Arduino Mega

	make mega2560

Build a boot loader for Arduino Mega without the monitor

	make mega2560 -e DISABLE_MONITOR=1
