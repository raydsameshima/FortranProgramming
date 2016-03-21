! ex6_2.f90
! array product
PROGRAM ArrayPdocut
  REAL :: x(0:4)
  x = (/ ( 2.0**n, n=0, 4) /)
!
  Print*, "The initial array is ", x
!
  x = x (0:4) * x(4:0:-1)
!
  Print*, "x (0:4) * x(4:0:-1) is:"
  PRINT*, x
! 
END PROGRAM ArrayPdocut
