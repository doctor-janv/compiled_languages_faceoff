INTEL_COMPILER_DIR="/cygdrive/c/Program Files (x86)/Intel/oneAPI/compiler/2025.0"
PATH="$INTEL_COMPILER_DIR/bin/":$PATH
PATH="$INTEL_COMPILER_DIR/lib/":$PATH
INTEL_COMPILER_DIR="/cygdrive/c/Program Files (x86)/Intel/oneAPI/compiler/2025.3"
PATH="$INTEL_COMPILER_DIR/bin/":$PATH
PATH="$INTEL_COMPILER_DIR/lib/":$PATH
MVS_DIR=/cygdrive/c/Program\ Files/Microsoft\ Visual\ Studio/2022/Community/VC/Tools/MSVC/14.42.34433/
PATH="$MVS_DIR/bin/Hostx64/x64/":$PATH
PATH="$MVS_DIR/lib/x64/":$PATH

pushd Test1/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 -march=native gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 -march=native gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 -march=native gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 -march=native gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu8.cc -o bin/gpp_w_lu8.x


    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu4.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu4.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu8.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu8.x





    icpx.exe -std=c++17 -O2 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx.x

    icpx.exe -std=c++17 -O3 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2.x

    icpx.exe -std=c++17 -O3 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu4.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu4.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu8.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu8.x
popd

pushd Test2/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 -march=native gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 -march=native gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 -march=native gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 -march=native gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu8.cc -o bin/gpp_w_lu8.x


    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu4.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu4.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu8.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu8.x





    icpx.exe -std=c++17 -O2 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx.x

    icpx.exe -std=c++17 -O3 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2.x

    icpx.exe -std=c++17 -O3 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu4.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu4.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu8.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu8.x
popd

pushd Test3/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 -march=native gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 -march=native gfortran.F90      -o bin/gfortran_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2.x
    gfortran -std=f2008 -O3 -march=native gfortran_w_lu2.F90 -o bin/gfortran_w_lu2_o3.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu4.F90 -o bin/gfortran_w_lu4.x
    gfortran -std=f2008 -O2 -march=native gfortran_w_lu8.F90 -o bin/gfortran_w_lu8.x

    g++ -std=c++17 -O2 -march=native gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 -march=native gpp.cc      -o bin/gpp_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2.x
    g++ -std=c++17 -O3 -march=native gpp_w_lu2.cc -o bin/gpp_w_lu2_o3.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu4.cc -o bin/gpp_w_lu4.x
    g++ -std=c++17 -O2 -march=native gpp_w_lu8.cc -o bin/gpp_w_lu8.x


    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran_w_lu2.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu2_o3.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu4.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu4.x

    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran_w_lu8.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_w_lu8.x





    icpx.exe -std=c++17 -O2 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx.x

    icpx.exe -std=c++17 -O3 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2.x

    icpx.exe -std=c++17 -O3 -march=native gpp_w_lu2.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu2_o3.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu4.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu4.x

    icpx.exe -std=c++17 -O2 -march=native gpp_w_lu8.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_w_lu8.x
popd

pushd Test4/
    mkdir "bin" 2>/dev/null || true

    gfortran -std=f2008 -O2 -march=native gfortran.F90      -o bin/gfortran.x
    gfortran -std=f2008 -O3 -march=native gfortran.F90      -o bin/gfortran_o3.x

    g++ -std=c++17 -O2 -march=native gpp.cc      -o bin/gpp.x
    g++ -std=c++17 -O3 -march=native gpp.cc      -o bin/gpp_o3.x


    ifx.exe -nologo /stand:f08 /O2 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx.x

    ifx.exe -nologo /stand:f08 /O3 /QxHost gfortran.F90 /link \
    /libpath:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    /libpath:"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.0\lib" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    /out:bin/ifx_o3.x



    icpx.exe -std=c++17 -O2 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx.x

    icpx.exe -std=c++17 -O3 -march=native gpp.cc \
    -L"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.42.34433\lib\x64" \
    -L"C:\Program Files (x86)\Intel\oneAPI\compiler\2025.3\lib" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" \
    -L"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\ucrt\x64" \
    -o bin/icx_o3.x

popd

echo "Compilation done"