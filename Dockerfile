FROM niklasmerz/raspberrypi-node-qemu
MAINTAINER NiklasMerz

RUN [ "cross-build-start" ]

WORKDIR /usr/src/app

COPY . ./

#Install dependencies
RUN apt-get -q update && apt-get install psmisc libraspberrypi-bin build-essential -y

RUN git submodule init && git submodule update

#RPI Webinterface
RUN cd /usr/src/app/RPi_Cam_Web_Interface && chmod u+x *.sh && ./install.sh q

RUN [ "cross-build-end" ]
