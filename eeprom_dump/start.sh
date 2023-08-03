#!/bin/sh
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils"
export PATH="$PATH:/tmp/portenta-x8-eeprom-utils/build"
./eepflash.sh --read --device=1 --address=50 -t=24c256 -f dump.eep
