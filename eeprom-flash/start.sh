#!/bin/sh
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils"
eepflash.sh --write --device=1 --address=50 -t=24c256 -f eeprom_settings.eep
