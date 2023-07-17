<a href="https://pika-spark.io/"><img align="right" src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white.png" width="15%"></a>
:sparkles: `i2c-tools-sh`
=========================
This Docker container provides a simple shell on top of an Alpine Linux with [i2c-tools](https://wiki.st.com/stm32mpu/wiki/I2C_i2c-tools) installed and all Arduino Portenta X8 I2C buses mounted into the container.

<p align="center">
  <a href="https://pika-spark.io/"><img src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white-github.png" width="40%"></a>
</p>

### How-to-build/run
```bash
git clone https://github.com/pika-spark/pika-spark-containers
cd pika-spark-containers/i2c-tools-sh
./docker-build.sh
sudo ./docker-run.sh
```

### How-to-i2c
```bash
/ # i2cdetect -l
i2c-0   i2c             30a20000.i2c                            I2C adapter
i2c-1   i2c             30a30000.i2c                            I2C adapter
i2c-2   i2c             30a40000.i2c                            I2C adapter
i2c-3   i2c             30a50000.i2c                            I2C adapter
...
/ # i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:                         -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- -- -- -- -- -- UU -- UU -- -- -- 
30: -- -- -- -- -- -- -- -- UU UU -- -- -- UU -- UU 
40: -- -- UU -- -- -- -- -- -- -- -- UU -- -- -- -- 
50: 50 -- -- -- -- -- -- -- UU -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- --                         
...
/ # i2cdump -f -y 1 0x50
No size specified (using byte-data access)
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f    0123456789abcdef
00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff    ................
10: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff    ................
20: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff    ................
30: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff    ................
40: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff    ................
```
