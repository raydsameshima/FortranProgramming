! ex3_2.f90
! sqrt
PROGRAM PrintSqrt
  REAL :: x
  PRINT*, "Input a real number:"
  READ *, x

  IF(x >= 0.0) THEN
    PRINT*, SQRT(x)
  ELSE
    PRINT*, "Impossible for x < 0."
  END IF

END PROGRAM PrintSqrt
