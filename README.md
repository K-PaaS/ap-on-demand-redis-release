## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-deployment">컨테이너 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/sidecar-deployment">사이드카</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/ap-deployment">어플리케이션 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-portal-release">CP 포털</a></td>
    <td colspan=2 align=center>-</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/portal-deployment">AP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=2 rowspan=9>Component<br>/ 서비스</td>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-common-api">Common API</a></td>
    <td colspan=2>-</td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-mongodb-shard-release">MongoDB</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-metrics-api">Metric API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-mysql-release">MySQL</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-api">Portal API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-pipeline-release">Pipeline</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-ui">Portal UI</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-rabbitmq-release">RabbintMQ</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-service-broker">Service Broker</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-on-demand-redis-release">🚩 Redis</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-terraman">Terraman API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-source-control-release">SoureceControl</a></td>
  </tr>
</table>
<i>🚩 You are here.</i>

## Notice
#### 릴리즈의 경로가 https://nextcloud.paas-ta.org/ 에서 https://nextcloud.k-paas.org/ 로 변경되었습니다  




  

  

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
