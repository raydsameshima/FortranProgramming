! ex6_3.f90
! Pascal's triangle
PROGRAM PascalTriangle
  IMPLICIT NONE
  INTEGER, PARAMETER :: max = 12
  INTEGER :: i, c(0:max) = 0
  c(1) = 1
!
  DO i = 1, max
    c(1:i) = c(1:i) + c(0:i-1)
    PRINT '(i2, ":", 50I5)', i, c(1:i)
  END DO
!
END PROGRAM PascalTriangle
