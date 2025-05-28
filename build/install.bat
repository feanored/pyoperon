@echo off

REM Spyder: "import sysconfig; print(sysconfig.get_config_var('prefix'))"
set INSTALL_PREFIX=C:\Users\eduar\AppData\Local\spyder-6\envs\spyder-runtime

REM goto operon

:aria-csv
rmdir /s /q csv-parser
git clone https://github.com/AriaFallah/csv-parser csv-parser
cd csv-parser
git checkout 4965c9f320d157c15bc1f5a6243de116a4caf101
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:eigen
rmdir /s /q eigen
git clone https://gitlab.com/libeigen/eigen.git
cd eigen
git checkout 3.4.0
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
	-DCMAKE_BUILD_TYPE=Release ^
	-DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release
cmake --install build
cd ..
REM goto exit


:eve
rmdir /s /q eve
git clone https://github.com/jfalcou/eve eve
cd eve
git checkout 3d5821fe770a62c01328b78bb55880b39b8a0a26
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DEVE_BUILD_TEST=OFF ^
    -DEVE_BUILD_BENCHMARKS=OFF ^
    -DEVE_BUILD_DOCUMENTATION=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:fluky
rmdir /s /q fluky
git clone https://github.com/foolnotion/fluky fluky
cd fluky
git checkout 19320e7499cf0958268dc11fec28a6e41ac332e4
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:vstat
rmdir /s /q vstat
git clone https://github.com/heal-research/vstat.git
cd vstat
git checkout 428ec2385aebf44d9ba89064b2b2ef419fd6206a
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_TESTING=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:fast-float
rmdir /s /q fast_float
git clone https://github.com/fastfloat/fast_float.git
cd fast_float
git checkout f476bc713fda06fbd34dc621b466745a574b3d4c
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DFASTLOAT_TEST=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:pratt-parser
rmdir /s /q pratt-parser-calculator
git clone https://github.com/foolnotion/pratt-parser-calculator.git
cd pratt-parser-calculator
git checkout 5093c67e2e642178cce1bc455f7dee8720820642
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_TESTING=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:unordered_dense
rmdir /s /q unordered_dense
git clone https://github.com/martinus/unordered_dense.git
cd unordered_dense
git checkout v4.5.0 
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:cpp-sort
rmdir /s /q cpp-sort
git clone https://github.com/Morwenn/cpp-sort.git
cd cpp-sort
git checkout 31dd8e9574dfc21e87d36794521b9e0a0fd6f5f6
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCPPSORT_BUILD_TESTING=OFF ^
    -DCPPSORT_BUILD_EXAMPLES=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:microsoft-gsl
rmdir /s /q GSL
git clone https://github.com/microsoft/GSL.git
cd GSL
git checkout 355982daf6c54ccb11bef8a1c511be2622dec402
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DGSL_INSTALL=1 ^
    -DGSL_TEST=0
cmake --build build --config Release
cmake --install build
cd ..
REM goto exit


:span-lite
rmdir /s /q span-lite
git clone https://github.com/martinmoene/span-lite.git
cd span-lite
git checkout 50f55c59d1b66910837313c40d11328d03447a41
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
	-DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:byte-lite
rmdir /s /q byte-lite
git clone https://github.com/martinmoene/byte-lite.git
cd byte-lite
git checkout dd5b3827f7cd74c1f399d1ec2c063982d3442a99
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
	-DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:quickcpplib
rmdir /s /q quickcpplib
git clone https://github.com/ned14/quickcpplib.git
cd quickcpplib
git checkout 72277c70f925829935a2af846731ab36063ec16f
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release
cmake --install build
cd ..
REM goto exit


:status-code
rmdir /s /q status-code
git clone https://github.com/ned14/status-code.git
cd status-code
git checkout a35d88d692a23a89a39d45dee12a629fffa57207
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release
cmake --install build
cd ..
REM goto exit


:outcome
rmdir /s /q outcome
git clone https://github.com/ned14/outcome.git
cd outcome
git checkout 571f9c930e672950e99d5d30f743603aaaf8014c
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DPROJECT_IS_DEPENDENCY=ON ^
    -DOUTCOME_BUNDLE_EMBEDDED_QUICKCPPLIB=OFF ^
    -Dquickcpplib_DIR=%INSTALL_PREFIX%\quickcpplib ^
    -DOUTCOME_BUNDLE_EMBEDDED_STATUS_CODE=OFF ^
    -Dstatus-code_DIR=%INSTALL_PREFIX%\status-code ^
    -DOUTCOME_ENABLE_DEPENDENCY_SMOKE_TEST=OFF ^
    -DCMAKE_DISABLE_FIND_PACKAGE_Git=ON ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:lbfgs
rmdir /s /q lbfgs
git clone https://github.com/foolnotion/lbfgs.git
cd lbfgs
git checkout 0ac2cb5b8ffea5e3e71f264d8e2d37d585449512
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DBUILD_EXAMPLES=OFF ^
    -DBUILD_TESTING=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%INSTALL_PREFIX%\lib64\cmake
cmake --install build
cd ..
REM goto exit


:taskflow
rmdir /s /q taskflow
git clone https://github.com/taskflow/taskflow.git
cd taskflow
git checkout b3c1e5fd8e2d67eaead944a8d869f87e6b58bbbe
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DTF_BUILD_EXAMPLES=OFF ^
    -DTF_BUILD_TESTS=OFF ^
    -DCMAKE_CXX_STANDARD=20 ^
    -DCMAKE_CXX_FLAGS="/std:c++20" ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release
cmake --install build
cd ..
goto exit


:mdspan
rmdir /s /q mdspan
git clone https://github.com/kokkos/mdspan.git
cd mdspan
git checkout 0e6a69dfe045acbb623003588a4aff844ea4b276
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_CXX_STANDARD=20 ^
    -DMDSPAN_CXX_STANDARD=20 ^
    -DMDSPAN_ENABLE_TESTS=OFF ^
    -DMDSPAN_ENABLE_BENCHMARKS=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --install build
cd ..
REM goto exit


:fmt
rmdir /s /q fmt
git clone https://github.com/fmtlib/fmt.git
cd fmt
mkdir build
git checkout 11.1.3 
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON ^
    -DFMT_TEST=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release
cmake --install build
cd ..
REM goto exit


:cpptrace
rmdir /s /q cpptrace
git clone https://github.com/jeremy-rifkin/cpptrace.git
cd cpptrace
git checkout f29edecca98c964e31c2e36976ed574f6ea5d9e2
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DCPPTRACE_USE_EXTERNAL_ZSTD=0 ^
    -DCPPTRACE_GET_SYMBOLS_WITH_LIBDWARF=0
cmake --build build --config Release
cmake --install build
cd ..
REM goto exit


:libassert
rmdir /s /q libassert
git clone https://github.com/jeremy-rifkin/libassert.git
cd libassert
git checkout v2.1.4
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
	-DCMAKE_CXX_STANDARD=11 ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DLIBASSERT_USE_EXTERNAL_CPPTRACE=1 ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_POSITION_INDEPENDENT_CODE=1 ^
    -DCMAKE_CXX_FLAGS="/EHsc" ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release
cmake --install build
cd ..
REM goto exit


:xxHash
rmdir /s /q xxHash
git clone https://github.com/Cyan4973/xxHash.git
cd xxHash
git checkout 1ec193eacfeae3e0da497373d41ccd850ebec9e5
mkdir build
cmake -S build/cmake -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
	-DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release --parallel
cmake --install build
cd ..
REM goto exit


:operon
rmdir /s /q operon
REM git clone https://github.com/heal-research/operon.git
git clone https://github.com/feanored/operon.git
cd operon
REM git checkout 1dbe27597ebdfb7e4fe4b421ce2daa134b51f2fd
git checkout windows
mkdir build
cmake -S . -B build ^
	-G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_CLI_PROGRAMS=OFF ^
    -DBUILD_TESTING=OFF ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON ^
    -DCMAKE_CXX_STANDARD=20 ^
    -DCMAKE_CXX_FLAGS="/std:c++20 /EHsc" ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%INSTALL_PREFIX%\lib64\cmake
cmake --build build --config Release -j -t operon_operon
cmake --install build
cd ..
REM goto exit


:nanobind
rmdir /s /q nanobind
git clone https://github.com/wjakob/nanobind.git
cd nanobind
git submodule update --init --recursive
git checkout 62fc996018d9ea4d51af9c86cf008c2562b4eeab
mkdir build
cmake -S . -B build ^
    -G "Visual Studio 17 2022" -T ClangCL ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_INSTALL_PREFIX=%INSTALL_PREFIX%
cmake --build build --config Release
cmake --install build
cd ..

:exit
