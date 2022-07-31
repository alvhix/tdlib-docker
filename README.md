# TdLib docker build

Dockerfile to compile TDLib in an Alpine docker container

### Run

With this command you will obtain a zip file with the TDLib binaries. You can extract it using Winrar, 7 zip or a similar program:
`docker cp $(docker run -d alvhix/tdlib-docker):/tdlib/build.tar.gz $(pwd)/build.tar.gz`
