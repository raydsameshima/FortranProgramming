! ex6_2.f90
! array product
PROGRAM ArrayProduct
  REAL :: x(0:4)
  x = (/ ( 2.0**n, n=0, 4) /)

  Print *, "The initial array is ", x 
! in-place re-assignment with reversed order
  x = x(0:4) * x(4:0:-1)

  Print *, "x (0:4) * x(4:0:-1) is:"
  PRINT *, x

END PROGRAM ArrayProduct
