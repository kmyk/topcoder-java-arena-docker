#!/bin/bash
exec docker run --rm -it \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $PWD:$HOME \
    -v $PWD:/mnt/workspace \
    -u $(id -u):$(id -g) \
    -e DISPLAY=$DISPLAY \
    "${@:-topcoderarena}"
