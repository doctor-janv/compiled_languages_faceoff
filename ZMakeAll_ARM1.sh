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

popd

pushd Test4/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

popd

pushd Test5/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

popd

pushd Test6/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

popd

pushd Test7/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

popd

pushd Test8/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 gpp.cc      -o bin/gpp_o3.x

popd

echo "Compilation done"
