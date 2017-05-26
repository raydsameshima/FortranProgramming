! ex3_2.f90
! sqrt
PROGRAM PrintSqrt
  REAL :: x
  PRINT *, "Input a real number:"
  READ *, x

  IF(x >= 0.0) THEN
    PRINT *, "sqrt of input is ", SQRT(x)
  ELSE
    PRINT *, "Impossible for x < 0."
  END IF

END PROGRAM PrintSqrt

! $ ./ex3_2 
!  Input a real number:
! 25
!  sqrt of input is    5.00000000    
! $ ./ex3_2 
!  Input a real number:
! 90
!  sqrt of input is    9.48683262    
! $ ./ex3_2 
!  Input a real number:
! 2 
!  sqrt of input is    1.41421354 
