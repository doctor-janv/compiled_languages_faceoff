export PATH="/opt/intel/compiler/2025.0/bin":$PATH
export PATH="/opt/intel/compiler/2025.0/lib":$PATH
pushd Test1/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 gpp_w_lu8.cc -o bin/gpp_w_lu8.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu2.F90 -obin/ifx_w_lu2.x
    ifx -nologo -stand:f08 -O3 gfortran_w_lu2.F90 -obin/ifx_w_lu2_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu4.F90 -obin/ifx_w_lu4.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu8.F90 -obin/ifx_w_lu8.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x
    icpx -std=c++17 -O2 gpp_w_lu2.cc -o bin/icx_w_lu2.x
    icpx -std=c++17 -O3 gpp_w_lu2.cc -o bin/icx_w_lu2_o3.x
    icpx -std=c++17 -O2 gpp_w_lu4.cc -o bin/icx_w_lu4.x
    icpx -std=c++17 -O2 gpp_w_lu8.cc -o bin/icx_w_lu8.x

popd

pushd Test2/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 gpp_w_lu8.cc -o bin/gpp_w_lu8.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu2.F90 -obin/ifx_w_lu2.x
    ifx -nologo -stand:f08 -O3 gfortran_w_lu2.F90 -obin/ifx_w_lu2_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu4.F90 -obin/ifx_w_lu4.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu8.F90 -obin/ifx_w_lu8.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x
    icpx -std=c++17 -O2 gpp_w_lu2.cc -o bin/icx_w_lu2.x
    icpx -std=c++17 -O3 gpp_w_lu2.cc -o bin/icx_w_lu2_o3.x
    icpx -std=c++17 -O2 gpp_w_lu4.cc -o bin/icx_w_lu4.x
    icpx -std=c++17 -O2 gpp_w_lu8.cc -o bin/icx_w_lu8.x

popd

pushd Test3/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 gpp_w_lu8.cc -o bin/gpp_w_lu8.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu2.F90 -obin/ifx_w_lu2.x
    ifx -nologo -stand:f08 -O3 gfortran_w_lu2.F90 -obin/ifx_w_lu2_o3.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu4.F90 -obin/ifx_w_lu4.x
    ifx -nologo -stand:f08 -O2 gfortran_w_lu8.F90 -obin/ifx_w_lu8.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x
    icpx -std=c++17 -O2 gpp_w_lu2.cc -o bin/icx_w_lu2.x
    icpx -std=c++17 -O3 gpp_w_lu2.cc -o bin/icx_w_lu2_o3.x
    icpx -std=c++17 -O2 gpp_w_lu4.cc -o bin/icx_w_lu4.x
    icpx -std=c++17 -O2 gpp_w_lu8.cc -o bin/icx_w_lu8.x

popd

pushd Test4/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x

popd

pushd Test5/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x

popd

pushd Test6/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x

popd

pushd Test7/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x

popd

pushd Test8/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

    ifx -nologo -stand:f08 -O2 gfortran.F90 -o bin/ifx.x
    ifx -nologo -stand:f08 -O3 gfortran.F90 -o bin/ifx_o3.x

    icpx -std=c++17 -O2 gpp.cc -o bin/icx.x
    icpx -std=c++17 -O3 gpp.cc -o bin/icx_o3.x

popd

echo "Compilation done"
