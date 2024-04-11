# Run Cisco AnyConnect in Docker

## Prerequisites:

* Docker
* Tested on Linux running X11

## How To Run This

1. Download `anyconnect-linux64-4.10.07061-predeploy-k9.tar.gz` from [Cisco's Website](https://software.cisco.com/download/home/286281283/type/282364313/release/4.10.07061) and place it into this directory.

2. Build this dockerfile:

```
docker build . --tag anyconnect
```

3. Run the docker image:

```
docker run --rm -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name anyconnect --privileged anyconnect
```

This will start AnyConnect and Firefox. As soon as you have connected to your VPN, you can use Firefox to browse.
