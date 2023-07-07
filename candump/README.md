<a href="https://pika-spark.io/"><img align="right" src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white.png" width="15%"></a>
:sparkles: `candump`
====================
This Docker container dumps all received CAN frames on `stdout`. 

<p align="center">
  <a href="https://pika-spark.io/"><img src="https://raw.githubusercontent.com/pika-spark/.github/main/logo/logo-pika-spark-bg-white-github.png" width="40%"></a>
</p>

### How-to-build/run
```bash
git clone https://github.com/pika-spark/pika-spark-containers
cd pika-spark-containers/candump-can0
./docker-build.sh
sudo ./docker-run.sh can0 | can1 [bitrate]
```
