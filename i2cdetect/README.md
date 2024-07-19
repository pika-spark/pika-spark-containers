<a href="https://pika-spark.io/"><img align="right" src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white.png" width="15%"></a>
:sparkles: `i2cdetect`
======================
This Docker container probes all I2C devices on a specified bus using [i2cdetect](https://linux.die.net/man/8/i2cdetect).

<p align="center">
  <a href="https://pika-spark.io/"><img src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white-github.png" width="40%"></a>
</p>

### How-to-build/run
```bash
git clone https://github.com/pika-spark/pika-spark-containers
cd pika-spark-containers/i2cdetect
./docker-build.sh
sudo ./docker-run.sh i2c-bus-num
```

```bash
fio@portenta-x8-131bc209dab7022b:~/pika-spark-containers/i2cdetect$ sudo ./docker-run.sh 1
[ 5338.106501] docker0: port 1(veth5902542) entered blocking state
[ 5338.121932] docker0: port 1(veth5902542) entered disabled state
[ 5338.128924] device veth5902542 entered promiscuous mode
[ 5338.855605] eth0: renamed from veth6aa8ce9
[ 5338.883471] IPv6: ADDRCONF(NETDEV_CHANGE): veth5902542: link becomes ready
[ 5338.890568] docker0: port 1(veth5902542) entered blocking state
[ 5338.896542] docker0: port 1(veth5902542) entered forwarding state
0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:                         -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- UU -- UU -- -- --
30: -- -- -- -- -- -- -- -- UU UU -- -- -- UU -- UU
40: -- -- UU -- -- -- -- -- -- -- -- UU -- -- -- --
50: 50 -- -- -- -- -- -- -- UU -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --
```
