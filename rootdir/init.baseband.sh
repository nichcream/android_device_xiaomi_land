#!/vendor/bin/sh

baseband_str=$(strings /vendor/firmware_mnt/image/modem.b14 | grep "MPSS.*-V" | head -1)

if [ ! -z $baseband_str ]; then
    setprop gsm.version.baseband $baseband_str
fi
