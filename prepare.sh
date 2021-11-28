#!/bin/bash
mkdir -p _Release
cd _Release

cmake -DPCB=X10 -DPCBREV=TX16S -DDEFAULT_MODE=2 -DGVARS=YES -DPPM_UNIT=US -DHELI=YES -DLUA=YES -DINTERNAL_GPS=NO -DCMAKE_BUILD_TYPE=Release ../

cd ..
mkdir -p _Debug
cd _Debug
cmake -DPCB=X10 -DPCBREV=TX16S -DDEFAULT_MODE=2 -DGVARS=YES -DPPM_UNIT=US -DHELI=YES -DLUA=YES -DINTERNAL_GPS=NO -DCMAKE_BUILD_TYPE=Debug ../

cd ..
mkdir -p _NV14
cd _NV14
cmake -DPCB=NV14 -DDEFAULT_MODE=2 -DGVARS=YES -DPPM_UNIT=US -DHELI=YES -DLUA=YES -DINTERNAL_GPS=NO -DCMAKE_BUILD_TYPE=Debug ../
