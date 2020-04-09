# Docker Image for Hotels Transit

## How-To:
### Configure:
This container can be run on either an x86 machine or on a Raspberry Pi. 
#### Raspberry Pi config:
To run it on a Raspberry Pi do the following:
1. rename `Dockerfile` into something else
2. rename `Dockerfile_rpi` into simply `Dockerfile`
#### General config:
1. create a `conf.ini` file based on `conf.ini.template` with your Google Maps API key inside 

### Build:
To build the container use `docker build -t hotels_transit:latest .`

### Launch:
* To launch the container without a restart policy (stops in case of crash or reboot) use: `docker run -d -p 5000:5000 soundtouch_controller:latest`
* To launch the conatiner automatically at startup unless explicitly stopped use: `docker run -d -p 5000:5000 -v <path_to_host_cache_folder>:/app/cache hotels_transit:latest`