#!/bin/bash

docker run -dit -p 8888:8888 -v "$(dirname $(pwd))/notebook":/root/notebook --restart unless-stopped pyalgo:basic