! ex4_2.f90
! complex numbers

PROGRAM Exponential
  Real :: x
  Complex :: z
  Integer :: n
  Complex, Parameter :: i = (0.0, 1.0)

  Print *, "Input a real number x and an integer n:"
  Read *, x, n; z = Exp(i*x)
  Print *, "Exp(i*x)= ", z**n
  Print *, "Cos(n*x)= ", Cos(n*x), "Sin(n*x)= ",  Sin(n*x) 
END PROGRAM Exponential
