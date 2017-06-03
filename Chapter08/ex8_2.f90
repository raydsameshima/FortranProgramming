! ex8_2.f90
! Drawing a histogram
PROGRAM histogram
  INTEGER :: nn(0:9), j
  CHARACTER(LEN=80) :: cn
  CHARACTER(LEN=30) :: fmt

! raw data: the number of students in 0-100 range by 10 pts.
    nn = (/1,5,12,22,28,35,48,28,10,3/)
! out put format
    fmt ="(1X, I2, '-', I2, 1X, A50)"
  
  DO j=0,9
    CALL str( nn(j), cn)
    PRINT fmt, 10*j, 10*j+9, cn
  END DO

END PROGRAM histogram

SUBROUTINE str(n,c)
  INTEGER, INTENT(IN) :: n
  CHARACTER(LEN=80), INTENT(OUT) :: c
  INTEGER :: k

    c = " "      ! default
    c(1:1)="I"   ! base line

  DO k=2, n+1
    c(k:k) = "o" ! hight
  END DO
END SUBROUTINE str
