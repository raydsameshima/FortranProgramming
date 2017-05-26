! ex2_4.f90
PROGRAM Func
  REAL :: f, x, a
  f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0

  PRINT*, "Consider f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0"
  PRINT*, "Give an integer: "
  READ*, a
  PRINT*, "f(", a, ")= ", f(a)
  
END PROGRAM Func
