#!/usr/bin/env bash

./build.sh

docker save joeranbosma/dragon_bert_base_general_domain:latest | gzip -c > dragon_bert_base_general_domain.tar.gz
