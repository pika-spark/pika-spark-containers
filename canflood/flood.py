#!/usr/bin/python3

import can
import time
import os
import sys

if len(sys.argv) >= 3:
    interface = sys.argv[1]
    delay = float(sys.argv[2])
else:
    print("usage: flood.py <can_if> <delay>")
    
print("{} {}".format(interface, delay))    
    
try:
    bus = can.interface.Bus(channel=interface, bustype='socketcan')
except OSError:
    print('Cannot find CAN interface.')
    exit()
    
wrong_cnt = 0    
try:
    cnt = 0
    while True:
        message = can.Message(
            arbitration_id=0xDABBAD0, data=[cnt % 0xFF,0,0,0,0,0,0,0], is_extended_id=True
        )
        cnt += 1

        try:
            bus.send(message)
        except can.CanError:
            print("Message NOT sent")
        
        time.sleep(delay)
    
   
except KeyboardInterrupt:
    print('\n\rKeyboard interrtupt')
