#!/usr/bin/env bash

./build.sh

docker save joeranbosma/dragon_baseline_bert_base_multilingual:latest | gzip -c > dragon_baseline_bert_base_multilingual.tar.gz
