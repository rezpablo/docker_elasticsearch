#!/bin/bash

docker run --name elasticsearch -v /home/pablo/workspace/docker/esbdata:/usr/share/elasticsearch/data --net=host rezpablo/elasticsearch
