if [ -z "$1" ]
  then
    echo "Please provide version number"
    exit 0;
fi

docker push gabrielmilan/cocalc-atlas:latest
docker push gabrielmilan/cocalc-atlas:latest-base
docker push gabrielmilan/cocalc-atlas:base-$1
