FROM resin/raspberrypi-node

COPY qemu-arm-static /usr/bin/

WORKDIR /usr/src/app

COPY . ./

#WIP Do while image creation
#Install dependencies
# RUN ./install.sh
