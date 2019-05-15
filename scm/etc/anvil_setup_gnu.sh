#!/bin/bash

echo "Setting environment variables for SCM-CCPP on anvil with gcc/gfortran"

#load the modules in order to compile the GMTB SCM
echo "Loading gnu modules..."
module purge

module load comp/gcc/8.2.0
module load other/python/GEOSpyD/Ana2019.03_py2.7
module load other/git/latest
module load other/cmake/latest

module list

echo "Setting NETCDF environment variables"
export BASEDIR=/ford1/share/gmao_SIteam/Baselibs/ESMA-Baselibs-5.2.2/x86_64-unknown-linux-gnu/gfortran_8.2.0-mpiuni

export NETCDF_INCLUDES=$($BASEDIR/Linux/bin/nf-config --includedir)/netcdf
export NETCDF_LIBRARIES=$($BASEDIR/Linux/bin/nf-config --flibs)
export NETCDF_LIBRARIES="$NETCDF_LIBRARIES -lpthread"

#check to see if f90nml is installed locally
echo "Checking if f90nml python module is installed"
python -c "import f90nml"

if [ $? -ne 0 ]
then
	echo "Not found! Please source an Anaconda module"
   exit 1
else
	echo "f90nml is installed"
fi
