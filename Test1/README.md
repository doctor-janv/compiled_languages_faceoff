# Test 1 - Reduction operation of a vector

Defenitions:
- PL, Programming Language

Processes like computing averages or computing average often involve the
change of a scalar value on the hand of each element of a vector. These tests
all exercise this in the form:

```fortran
sum = 0.0
do i=1,N 
    sum = sum + vec(i)
end do
```
