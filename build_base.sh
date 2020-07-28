if [ -z "$1" ]
  then
    echo "Please provide version number"
    exit 0;
fi

docker build --compress --no-cache -t gabrielmilan/cocalc-atlas:latest .
docker build --compress --no-cache -t gabrielmilan/cocalc-atlas:latest-base .
docker build --compress  -t gabrielmilan/cocalc-atlas:base-$1 .
