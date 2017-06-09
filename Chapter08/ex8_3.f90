! ex8_3.f90
!
PROGRAM main
  CHARACTER(LEN=8) :: hex ! Type declaration is necessary.
  INTEGER :: i

  PRINT*, "Input a positive integer (or negative to stop):"
  DO
    READ*, i
    IF(i<0) EXIT
    PRINT*, hex(i)
  END DO
END PROGRAM main

FUNCTION hex(n)
  CHARACTER(LEN=8) :: hex ! The type of function
  INTEGER, INTENT(INOUT) :: n
  CHARACTER(LEN=1) :: h(0:15) = (/'0','1','2','3','4','5','6','7', &
                                  '8','9','A','B','C','D','E','F'/)
  INTEGER :: j, nn

  hex = " " ! Initialization, return value is given by its name

  DO j=8, 1, -1
    nn = n/16
    hex(j:j) = h(n-16*nn)
    IF(nn==0) EXIT
    n=nn
  END DO
END FUNCTION hex
