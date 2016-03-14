! ex3_4.f90
! triangle pulse
! F(x) = 0.0            x < 28.0
!      = 0.5*x -14.0    28.0 < x < 30.0
!      = -0.5*x + 16.0  30.0 < x < 32.0
!      = 0.0            32.0 < x

PROGRAM Triangle
  REAL :: x
  PRINT*, "x?"
  READ*, x

  IF( x < 28.0) THEN
    f = 0.0
  ELSE IF( x < 30.0) THEN
    f = 0.5*x -14.0
  ELSE IF( x < 32.0) THEN
    f = -0.5*x + 16
  ELSE
    f = 0.0
  END IF

  PRINT*, x,f
END PROGRAM Triangle
