README
======

[Docker](https://www.docker.com/what-docker) repository for the automated build of a compact image 
with **Debian 8** ("Jessie"), **Maven 3**, (a size optimized) **Oracle JDK 8** and **wine**.

This image is useful when building Java based software using [launch4j](http://launch4j.sourceforge.net/) 
and [InnoSetup](http://www.jrsoftware.org/isinfo.php), which both require a Windows execution 
environment during the (maven) build.

This image uses [rmuller/jessie-oraclejdk8](https://hub.docker.com/r/rmuller/jessie-oraclejdk8/) as 
base image.

Total size of this image is 652 MB (252 MB compressed).

This image is available via [hub.docker.com](https://hub.docker.com/r/rmuller/jessie-oraclejdk8-wine/).

| Docker tag | Debian 8         | Oracle JDK 8 | Maven 3  | Wine  |
|------------|------------------|--------------|----------|-------|
| 1.0.x      | 8.6 x86-64 4.4.0 | 1.8.0_112    | 3.3.9    | 1.6.2 |

To run this image in interactive mode:

```` bash
$ docker run -it rmuller/jessie-oraclejdk8-wine
````

### Version history

+ `1.0.0` Initial release
+ `1.0.1` Fix for error when used by Bitbucket Pipelines: "winevdm DOS memory range is unavailable."
