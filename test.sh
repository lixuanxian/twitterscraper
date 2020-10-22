#!/bin/bash
  docker build \
        --build-arg http_proxy=${http_proxy} \
        --build-arg https_proxy=${https_proxy} \
        -t twitterscraper:build .

  docker run --rm -it \
   -v ${HOME}/twitterscraper:/app/data \
   twitterscraper:build \
   twitterscraper Trump --limit 1 --javascript --begindate=2020-10-01 --enddate=2020-10-23 --output=tweets.json
