! ex2_1.f90
! 3 different averages: 
! arithmetic, geometric, and harmonic

PROGRAM Example_2_1
  REAL :: a, b, av1, av2, av3
  PRINT *, "Given 2 numbers, will return these &
           arithmetic (a+b)/2, geometric sqrt(a*b), &
           and harmonic 1/(1/a + 1/b) means."
  READ  *, a, b
    av1 = (a + b)/2.0
!   av2 = (a*b)**0.5
    av2 = sqrt(a*b)
    av3 = 1.0/((1.0/a + 1.0/b)/2.0)
  PRINT*, av1, av2, av3
END PROGRAM Example_2_1

! $ ./ex2_1.out 
!  Given 2 numbers, will return these arithmetic (a+b)/2, geometric sqrt(a*b), and harmonic 1/(1/a + 1/b) means.
! 10 20
!    15.0000000       14.1421356       13.3333330  
