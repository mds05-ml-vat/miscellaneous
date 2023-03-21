#!/bin/bash

# disk size requirement ~= 25 GB

urls=(
"https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AABJtkTnNc8LcVTfH1gE_uFoa/Anomaly-Videos-Part-1.zip?dl=0",
"https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAbdSEUox64ZLgVAntr2WgSa/Anomaly-Videos-Part-2.zip?dl=0",
"https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAgpsRNSHI_BtRnSCxxR7j9a/Anomaly-Videos-Part-3.zip?dl=0",
"https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AABqY-3fJSmSMafFIlJXRE-9a/Anomaly-Videos-Part-4.zip?dl=0"
)

for url in "${urls[@]}"; do
    file=$(basename $url | sed 's/\?.*//')
    wget $url -O $file &
done

wait