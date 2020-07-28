if [ -z "$1" ]
  then
    echo "Please provide version number"
    exit 0;
fi

cd files/cocalc-docker && git pull && cd ../..
docker build --compress  -t gabrielmilan/cocalc-atlas:latest-gpu -f Dockerfile.gpu .
docker build --compress  -t gabrielmilan/cocalc-atlas:gpu-$1 -f Dockerfile.gpu .
