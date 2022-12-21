# TdLib docker build

Docker image to compile TDLib in Alpine

### Run

With this command you will obtain a zip file in your current path with the compiled TDLib binaries. You can extract it using Winrar, 7-Zip or a similar program:
`docker cp $(docker run -d alvhix/tdlib-docker):/build.tar.gz $(pwd)/build.tar.gz`

### Warning

Compilation time depends on your machine, it can take a lot of time.
