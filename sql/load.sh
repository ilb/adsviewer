PWD=`pwd`
cat load.sql | sed "s^\$PWD^$PWD^" | sudo -u postgres psql adsviewer 