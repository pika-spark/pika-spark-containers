#!/bin/sh
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils"
eepflash.sh --read --device=1 --address=50 -t=24c256 -f eeprom_dump.eep
eepdump eeprom_dump.eep eeprom_dump.txt
cat eeprom_dump.txt
