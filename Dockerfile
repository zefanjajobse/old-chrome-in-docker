FROM ubuntu:bionic

RUN apt-get update; apt-get clean

# Add a user for running applications.
RUN useradd apps
RUN mkdir -p /home/apps && chown apps:apps /home/apps

# Install x11vnc.
RUN apt-get install -y x11vnc

# Install xvfb.
RUN apt-get install -y xvfb

# Install fluxbox.
RUN apt-get install -y fluxbox

# Install wget.
RUN apt-get install -y wget

# Install wmctrl.
RUN apt-get install -y wmctrl libcurl3 eterm

COPY *.deb /
RUN apt-get -y install ./chrome64_48.deb

COPY entrypoint.sh ./entrypoint.sh
RUN chmod a+x ./entrypoint.sh

# ENTRYPOINT [ "entrypoint.sh" ]
CMD ["/bin/bash","./entrypoint.sh"]
