! ex8_11.f90
! Hanoi tower
PROGRAM main
  INTEGER :: n
  CHARACTER(LEN=1) :: a,b,c

  n=0
  a='A'; b='B'; c='C'

  DO WHILE (n <= 0)
    PRINT*, "Put the number of rings:"
    READ*, n
  END DO
  CALL hanoi(n,a,b,c)
END PROGRAM main

RECURSIVE SUBROUTINE hanoi(i,x,y,z)
  INTEGER, INTENT(IN) :: i
  CHARACTER(LEN=1), INTENT(IN) :: x,y,z

  IF( i > 0 ) THEN
    CALL hanoi(i-1, x, z, y) ! y-z flip
    PRINT '( "The ", I2, "-th ring moves from ", A1, " to ", A1 &
          "." )', i,x,y
    CALL hanoi(i-1, z, y, x) ! z-x flip
  END IF
END SUBROUTINE hanoi
