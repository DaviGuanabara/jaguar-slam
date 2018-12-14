#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/davi/Desktop/jaguar_ws/src/geographic_info/geodesy"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/davi/Desktop/jaguar_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/davi/Desktop/jaguar_ws/install/lib/python2.7/dist-packages:/home/davi/Desktop/jaguar_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/davi/Desktop/jaguar_ws/build" \
    "/usr/bin/python2" \
    "/home/davi/Desktop/jaguar_ws/src/geographic_info/geodesy/setup.py" \
    build --build-base "/home/davi/Desktop/jaguar_ws/build/geographic_info/geodesy" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/davi/Desktop/jaguar_ws/install" --install-scripts="/home/davi/Desktop/jaguar_ws/install/bin"
