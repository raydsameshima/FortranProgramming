! ex5_7.f90
! sqrt
PROGRAM MySqrt
  Real :: r, x, d = 0.000005

  Print*, "Input a real number:"
  Read*, r
  If (r>0) Then
    x = r
    Do While(ABS(x**2 - r) > d)
       x = 0.5*(x + r/x)
    END Do
    Print "(F8.5)", x
  END If
END PROGRAM MySqrt
