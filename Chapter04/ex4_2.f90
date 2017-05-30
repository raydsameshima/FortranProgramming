! ex4_2.f90
! complex numbers

PROGRAM Exponential
  Real :: x
  Complex :: z
  Integer :: n
  Complex, Parameter :: i = (0.0, 1.0) ! parameter (const.)

  Print *, "Input a real number x and an integer n:"
  Read *, x, n; z = Exp(i*x)
  Print *, "Exp(i*x)= ", z**n
  Print *, "Cos(n*x)= ", Cos(n*x), "Sin(n*x)= ",  Sin(n*x) 
END PROGRAM Exponential

!  rds:Chapter04 rds$ ./ex4_2.out 
!   Input a real number x and an integer n:
!  3.1415926535
!  12
!   Exp(i*x)=         (1.00000000,1.049073262E-06)
!   Cos(n*x)=    1.00000000     Sin(n*x)=    9.53990451E-08
