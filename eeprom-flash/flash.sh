#!/bin/sh
eepmake "/tmp/$1" eeprom_settings.eep
eepflash.sh --write --device=1 --address=50 -t=24c256 -f eeprom_settings.eep
