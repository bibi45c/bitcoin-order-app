#!/bin/bash

docker pull zaproxy/zap-stable

docker run --rm --user root -v "$(pwd):/zap/wrk/:rw" -t zaproxy/zap-stable \
  zap-baseline.py \
  -t "https://kenken64.github.io/bitcoin-order-app" \
  -r /zap/wrk/zap_baseline_report.html

echo $? > /dev/null