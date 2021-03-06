#!/bin/bash

set -xeu

function download {
    # convenience function to download a file using wget
    # positional arguments:
    # $1 - URL to download
    # $2 (optional) - file name to save to

    if [ $# -eq 2 ]; then
        wget -c -O $2 $1
    elif [ $# -eq 1 ]; then
        wget -c $1
    fi
}

# remember working directory
wd=$(pwd)

# retrieve genome and geneset
cd $wd
vb_dir=data/external/vectorbase
mkdir -pv $vb_dir
cd $vb_dir

# OLD VECTORBASE - gone (sob sob)
# download https://www.vectorbase.org/download/anopheles-gambiae-pestchromosomesagamp4fagz Anopheles-gambiae-PEST_CHROMOSOMES_AgamP4.fa.gz
# gunzip --keep --force Anopheles-gambiae-PEST_CHROMOSOMES_AgamP4.fa.gz
# download https://www.vectorbase.org/download/anopheles-gambiae-pestbasefeaturesagamp412gff3gz Anopheles-gambiae-PEST_BASEFEATURES_AgamP4.12.gff3.gz
# gunzip --keep --force Anopheles-gambiae-PEST_BASEFEATURES_AgamP4.12.gff3.gz

# NEW VECTORBASE
download https://vectorbase.org/common/downloads/Current_Release/AgambiaePEST/fasta/data/VectorBase-48_AgambiaePEST_Genome.fasta
download https://vectorbase.org/common/downloads/Current_Release/AgambiaePEST/gff/data/VectorBase-48_AgambiaePEST.gff

