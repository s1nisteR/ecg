#!/bin/bash

mkdir data && cd data

curl -o training2017.zip "https://physionet.org/files/challenge-2017/1.0.0/training2017.zip?download"
unzip training2017.zip
curl -o sample2017.zip "https://physionet.org/files/challenge-2017/1.0.0/sample2017.zip?download"
unzip sample2017.zip
curl -o REFERENCE-v3.csv "https://physionet.org/files/challenge-2017/1.0.0/REFERENCE-v3.csv?download"

cd ..

python build_datasets.py
