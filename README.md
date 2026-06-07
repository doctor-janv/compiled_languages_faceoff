# compiled_languages_faceoff
A faceoff between compiled languages

## Tests

1. Vector reductions: `s = s + a * v_i`
2. Vector arithmetic: `x_i = x_i  + a * y_i`
3. Vector dot-products: `s = s + x_i * y_i`
4. Intrinsic square-root: `s = s + sqrt(v_i)`
5. Intrinsic power: `s = s + v_i ** 2.718`
6. Intrinsic natural-exponent: `s = s + exp(v_i)`
7. Intrinsic logarithm: `s = s + ln(v_i)`
8. Intrinsic trigonometry: `s = s + sin(v_i)`

## Running the tests

Example on MacOS ARM1:
Load conda: `conda activate moose-dev-2025.05.23`
```
./ZMakeAll_ARM1.sh && ./test/run_tests -d "Test1,Test2,Test3,Test4,Test5,Test6,Test7,Test8" -j 1 | tee TestOutput.txt
```

On teton you need to startup the container.
```
module load apptainer
apptainer exec --bind $PWD scratch/container_v10.sif bash
```
When inside the container gcc-12 needs to be activated
```
scl enable gcc-toolset-12 bash
```

## Building the container

**The container HAS to be built on rod.hpc.inl.gov**

```
module load use.moose
mkdir -p scratch
apptainer build scratch/container.sif container/container.def
```

Installing experimental packages
```
apptainer shell --writable-tmpfs --fakeroot my_container.sif
```
