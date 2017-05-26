! ex2_4.f90
PROGRAM Func
  REAL :: f, x, a
  f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0

  PRINT *, "Consider f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0"
  PRINT *, "Give an integer: "
  READ *, a
  PRINT *, "f(", a, ")= ", f(a)
  
END PROGRAM Func

! $ ./ex2_4.out 
!  Consider f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0
!  Give an integer: 
! 0
!  f(   0.00000000     )=    4.00000000    
! $ ./ex2_4.out 
!  Consider f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0
!  Give an integer: 
! 1
!  f(   1.00000000     )=    14.0000000    
! $ ./ex2_4.out 
!  Consider f(x) = x**5 + 6.0*x**4 + 2.0*x**3 + x**2 + 4.0
!  Give an integer: 
! 2
!  f(   2.00000000     )=    152.000000 
