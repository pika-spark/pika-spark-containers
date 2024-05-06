#!/bin/sh
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils"
eepmake "$1" eeprom_settings.eep
eepflash.sh --write --device=1 --address=50 -t=24c256 -f eeprom_settings.eep
