# adapted from https://electronics.stackexchange.com/questions/7769/how-to-burn-arduino-mega-2560-bootloader

avrdude -C/opt/crosschain/etc/avrdude.conf -patmega2560 -cdragon_isp -Ulock:w:0x3F:m -Uefuse:w:0xFD:m -Uhfuse:w:0xD8:m -Ulfuse:w:0xFF:m  -v -e

avrdude -C/opt/crosschain/etc/avrdude.conf -patmega2560 -cdragon_isp -v -Uflash:w:stk500boot_v2_mega2560.hex:i -Ulock:w:0x0f:m -v
