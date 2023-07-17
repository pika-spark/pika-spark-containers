<a href="https://pika-spark.io/"><img align="right" src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white.png" width="15%"></a>
:sparkles: `can-utils-sh`
=========================
This Docker container allows i.e. to send CAN frames via `cansend`.

<p align="center">
  <a href="https://pika-spark.io/"><img src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white-github.png" width="40%"></a>
</p>

### How-to-build/run
```bash
git clone https://github.com/pika-spark/pika-spark-containers
cd pika-spark-containers/can-utils-sh
./docker-build.sh
sudo ./docker-run.sh can0 | can1 [bitrate]
```

### How-to-[`cansend`](https://manpages.ubuntu.com/manpages/lunar/man1/cansend.1.html)
```bash
cansend can0 123#DEADBEEF
cansend can0 1F334455#1122334455667788
```
