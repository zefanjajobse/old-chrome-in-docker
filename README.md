## Chrome on Docker

Run a older versions of chrome in docker and connect to it with VNC

### Steps

- Download a linux version of chrome https://www.slimjet.com/chrome/google-chrome-old-version.php
- Edit Docker file with the downloaded *.deb file
```bash
# Build image
sudo docker build -t chrome:48 .
# Run image
sudo docker run -p 5900:5900 -e VNC_SERVER_PASSWORD=password --user apps --privileged chrome:60
```

- View the container in a VNC viewer on 127.0.0.1:5900
- Launch chrome in a terminal within the container with:

```bash
google-chrome-stable
# or
google-chrome
```