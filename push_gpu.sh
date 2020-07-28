if [ -z "$1" ]
  then
    echo "Please provide version number"
    exit 0;
fi

docker push gabrielmilan/cocalc-atlas:latest-gpu
docker push gabrielmilan/cocalc-atlas:gpu-$1
