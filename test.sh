#!/bin/bash
  docker build \
        --build-arg http_proxy=${http_proxy} \
        --build-arg https_proxy=${https_proxy} \
        -t twitterscraper:build .

  docker run --rm -it \
   -v ${HOME}/twitterscraper:/app/data \
   twitterscraper:build \
   twitterscraper Trump --limit 10 --output=tweets.json
