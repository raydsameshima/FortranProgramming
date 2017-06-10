! ex8_4.f90
! Calendar calculation
PROGRAM main
  CHARACTER(LEN=3) :: name(0:6) & 
    = (/"Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"/)
  INTEGER :: md(1:12) = (/31,28,31,30,31,30,31,31,30,31,30,31/)
  INTEGER :: y,m,d,ld

  DO
    PRINT*, "Put an year:"
    READ*, y
    IF (y<=0) EXIT
! If y is leap year, then add one day in Feb.
    md(2) = 28 + leap(y)

    PRINT*, "Put a month:"
    DO
      READ*, m
      IF (0<m .AND. m<=12) THEN ! Valid
        EXIT
      ELSE
        PRINT*, "Choose amoung 1,2 .. 12, please ?"
      END IF
    END DO
    PRINT*, "Day?"
    READ*, d
    IF(d<= 0 .OR. d > md(m)) THEN
      PRINT*, "No such a day in ", m, "-th month" 
    ELSE
      CALL count(ld)
      PRINT '(1X, I4, "-year ", I2, "-month ", I2, "-day ", A3, A/)', &
                  y,            m,             d,         "is ", name(ld)
    END IF
  END DO
CONTAINS ! internal subprogram
  SUBROUTINE count(n)     
    INTEGER, INTENT(OUT) :: n
    n = yday(y) + SUM(md(1:m-1)) + d ! the nuber of days from 0001/01/01 Mon
    n = MOD(n,7)                     ! day of the week
  END SUBROUTINE count

  FUNCTION yday(x) RESULT(days)
    INTEGER :: x, days
    days = 365*(x-1) + (x-1)/4 - (x-1)/100 + (x-1)/400
  END FUNCTION yday

  INTEGER FUNCTION leap(x) ! if leap then 1 else 0
    INTEGER :: x
    leap = yday(x+1) - yday(x) - 365
  END FUNCTION leap

END PROGRAM main
