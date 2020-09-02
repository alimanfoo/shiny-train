# shiny-train

## Clone the repo

```bash
$ git clone --recursive git@github.com:alimanfoo/shiny-train.git
$ cd shiny-train
```

## Install development environment

```bash
$ ./binder/install-conda.sh
```

## Activate development environment

```bash
$ source binder/env.sh
```

## Download external data

Download data from Ag1000G, only needed to run genome-wide selection
scans:

```bash
$ ./download-ag1000g-data.sh
```

Download data from VectorBase:

```bash
$ ./download-vectorbase-data.sh
```

## Run genome-wide selection scans

Notebooks to run selection scans are in the `notebooks/gwss`
folder. They will save data out to `data/gwss`.

Selection scan data are stored in Google Cloud. To upload data from
local file system to GCP:

```bash
$ ./upload-gwss-data.sh
```

To download previously created data from Google Cloud to local file
system:


```bash
$ ./download-gwss-data.sh
```

## Install LaTex

```bash
$ ./binder/install-texlive.sh
```

## Build the manuscript

```bash
$ ./build-manuscript.sh
```
