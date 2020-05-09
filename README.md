# CoCalc ATLAS

This is the repository for the `gabrielmilan/cocalc-atlas` Docker image.

It consists on the default `sagemathinc/cocalc` image with a custom Python3 kernel added. This custom kernel adds:

* PyROOT (v6-16-00)
* Prometheus Framework
* Saphyra Framework
* OTools
* Tensorflow (CPU only)

among other stuff.

## Usage

* Build it:

```
./build.sh
```

* Run!

```
docker run -it -d --name cocalc-atlas -v <cocalc-data-path>:/projects -p <expose-port>:443 gabrielmilan/cocalc-atlas
```
