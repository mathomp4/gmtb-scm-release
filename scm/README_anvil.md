To build do:

```
cmake ../src/ -DNETCDF_INCLUDES=$NETCDF_INCLUDES -DNETCDF_LIBRARIES="$NETCDF_LIBRARIES"
```

which outputs:

```cmake
-- The C compiler identification is GNU 8.2.0
-- The CXX compiler identification is GNU 8.2.0
-- Check for working C compiler: /ford1/local/gcc/gcc-8.2.0/bin/gcc
-- Check for working C compiler: /ford1/local/gcc/gcc-8.2.0/bin/gcc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /ford1/local/gcc/gcc-8.2.0/bin/g++
-- Check for working CXX compiler: /ford1/local/gcc/gcc-8.2.0/bin/g++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- The Fortran compiler identification is GNU 8.2.0
-- Check for working Fortran compiler: /ford1/local/gcc/gcc-8.2.0/bin/gfortran
-- Check for working Fortran compiler: /ford1/local/gcc/gcc-8.2.0/bin/gfortran  -- works
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Checking whether /ford1/local/gcc/gcc-8.2.0/bin/gfortran supports Fortran 90
-- Checking whether /ford1/local/gcc/gcc-8.2.0/bin/gfortran supports Fortran 90 -- yes
-- Setting build type to 'Release' as none was specified.
-- Failed to find NetCDF interface for F90
-- Could NOT find NetCDF (missing: NetCDF_has_interfaces) 
-- Disable OpenMP support for C/C++/Fortran compiler
-- Disable OpenMP support for C/C++/Fortran compiler
-- Found LibXml2: /usr/lib64/libxml2.so (found version "2.9.1") 
-- Found Doxygen: /usr/bin/doxygen (found version "1.8.5") found components:  doxygen dot 
-- Disable OpenMP support for C/C++/Fortran compiler
-- Configuring done
-- Generating done
-- Build files have been written to: /home/mathomp4/CCPP/gmtb-scm-release/scm/bin-GNU
```
I'm not sure why the netCDF seems to not work. The F90 interface is
there.

Then run:
```
make -j
./gmtb_scm twpice |& tee run.log
```
