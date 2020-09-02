#!/bin/bash

set -xeu

mkdir -pv data/gwss
gsutil -m rsync -ru gs://ag1000g-release/phase2.selection.20200828/gwss/ data/gwss/
