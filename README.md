## Chrome on Docker

Run a older versions of chrome in docker and connect to it with VNC

### Steps

- Download a linux version of chrome https://www.slimjet.com/chrome/google-chrome-old-version.php
- Edit Docker file with the downloaded *.deb file
```bash
# Build image, --platform linux/amd64 on arm laptops
docker build -t chrome:48 .
# Run image
docker run -p 5900:5900 -e VNC_SERVER_PASSWORD=password --user apps --privileged chrome:48
```

- View the container in a VNC viewer on 127.0.0.1:5900
- If Google Chrome didn't launch on it's own, you can launch it by right-clicking the desktop:
Applications > Network > Web Browsing > Google chrome
