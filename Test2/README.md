# Test 2 - Vector offsets

Defenitions:
- PL, Programming Language

Vector offset arise from general arithmetic on vectors. These tests exercise the
general form 

```fortran
do i=1,N 
    vec2(i) = vec2(i) + a*vec1(i)
end do
```
where `a` is some scalar.
