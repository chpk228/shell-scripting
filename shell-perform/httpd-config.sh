#!/bin/bash

if command -v httpd &> /dev/null
then
    echo "httpd is installed."
    # Optional: print the location and version
    echo "Location: $(which httpd)"
    httpd -v
else
    echo "httpd is not installed."
fi

