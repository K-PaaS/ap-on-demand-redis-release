## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/ap-deployment">어플리케이션 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/container-platform">컨테이너 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 rowspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/portal-deployment">AP 포털</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-portal-release">CP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=4><a href="https://github.com/K-PaaS/PaaS-TA-Monitoring">모니터링 대시보드</a></td>
  </tr>
  <tr align=center>
    <td rowspan=2 colspan=2><a href="https://github.com/K-PaaS/monitoring-deployment">모니터링</a></td>
    <td><a href="https://github.com/K-PaaS/PaaS-TA-Monitoring-Release">Monitoring</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-logsearch-release">Logsearch</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-influxdb-release">InfluxDB</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-redis-release">Redis</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-PINPOINT-MONITORING-RELEASE">Pinpoint</td>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-PINPOINT-MONITORING-BUILDPACK">Pinpoint Buildpack</td>
    <td></td>
    <td></td>
  </tr>
  </tr>
  <tr align=center>
    <td rowspan=4 colspan=2><a href="https://github.com/K-PaaS/service-deployment">AP 서비스</a></td>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-CUBRID-RELEASE">Cubrid</a></td>
    <td><a href="https://github.com/K-PaaS/ap-api-gateway-release">Gateway</a></td>
    <td><a href="https://github.com/K-PaaS/ap-glusterfs-release">GlusterFS</a></td>
    <td><a href="https://github.com/K-PaaS/ap-app-lifecycle-release">Lifecycle</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-LOGGING-SERVICE-RELEASE">Logging</a></td>
    <td><a href="https://github.com/K-PaaS/ap-mongodb-shard-release">MongoDB</a></td>
    <td><a href="https://github.com/K-PaaS/ap-mysql-release">MySQL</a></td>
    <td><a href="https://github.com/K-PaaS/ap-pinpoint-release">Pinpoint APM</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/ap-pipeline-release">Pipeline</a></td>
    <td align=center><a href="https://github.com/K-PaaS/ap-rabbitmq-release">RabbitMQ</a></td>
    <td><a href="https://github.com/K-PaaS/ap-on-demand-redis-release">🚩 Redis</a></td>
    <td><a href="https://github.com/K-PaaS/ap-source-control-release">Source Control</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/ap-web-ide-release">WEB-IDE</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr align=center>
    <td rowspan=1 colspan=2><a href="https://github.com/K-PaaS/cp-deployment">CP 서비스</a></td>
    <td><a href="https://github.com/K-PaaS/container-platform-pipeline-release">Pipeline</a></td>
    <td><a href="https://github.com/K-PaaS/container-platform-source-control-release">Source Control</a></td>
    <td></td>
    <td></td>
  </tr>
</table>
<i>🚩 You are here.</i>



  

  

## ap-ondemand-redis-release

### ON-DEMAND Configuration
- mysql :: 1 machine
- on-demand-broker :: 1 machine
- service :: 0...# machine (on-demand-REDIS)





### Release 생성

[안1] SRC DOWNLOAD 후 생성
````
$ cd ~/
$ git clone https://github.com/K-PaaS/ap-on-demand-redis-release.git
$ cd ap-on-demand-redis-release

$ wget -O src.zip https://nextcloud.k-paas.org/index.php/s/wHoHJwNKXHCt8GJ/download
$ unzip src.zip
$ rm -rf src.zip

# sh create.sh {RELEASE-NAME} {VERSION}
$ sh create.sh ap-on-demand-redis 1.2.1
````





[안2] SRC submodule update & build 후 생성
````
$ cd ~/
$ git clone https://github.com/K-PaaS/ap-on-demand-redis-release.git
$ cd ap-ondemand-redis-release
$ git submodule init
$ git submodule update

$ cd  src/ap-on-demand-broker
$ gradle build

$ cd  ../..
$ wget -O src.zip https://nextcloud.k-paas.org/index.php/s/wHoHJwNKXHCt8GJ/download
$ unzip src.zip
$ rm -rf src.zip

$ cd src/ap-on-demand-broker
$ mv build/libs/ap-on-demand-broker.jar ap-on-demand-broker.jar

# sh create.sh {RELEASE-NAME} {VERSION}
$ sh create.sh ap-on-demand-redis 1.2.1
````

## Contributors ✨
<a href="https://github.com/K-PaaS/ap-on-demand-redis-release/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=K-PaaS/ap-on-demand-redis-release" />
</a>
