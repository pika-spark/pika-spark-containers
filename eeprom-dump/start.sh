#!/bin/sh
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils"
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils/build"
eepflash.sh --read --device=1 --address=50 -t=24c256 -f eeprom_dump.eep
eepdump eeprom_dump.eep eeprom_dump.txt
less eeprom_dump.txt
