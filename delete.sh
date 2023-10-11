bosh delete-deployment -d redis --force
bosh delete-release ap-on-demand-redis

rm -r dev_releases
rm -r .dev_builds/
rm -r ap-on-demand-redis-release*.tgz

