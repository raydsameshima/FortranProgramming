! ex8_9.f90
! resursive
RECURSIVE FUNCTION P(n,x) RESULT(pnx) 
  IMPLICIT NONE
  REAL :: pnx
  INTEGER, INTENT(IN) :: n
  REAL, INTENT(In) :: x

  IF(n==0) THEN
    pnx = 1.0
  ELSE IF(n==1) THEN
    pnx = x
  ELSE
    pnx = (2.0 - 1.0/n) * x * P(n-1,x) &
          - (1.0 - 1.0/n) * P(n-2,x)
  END IF
END FUNCTION P

PROGRAM main
  INTEGER :: n,i
  CHARACTER(LEN=1) :: c(-25:25)
  REAL :: x

  PRINT*, "Put the degree you need: "
  READ*, n
  PRINT '( "Legendre Polynomial P(", I2, ", x)" )', n
  DO i=0,20
    x = 0.05*i
    y = p(n,x)
    CALL presentation
    PRINT '(F5.2, 2X, F10.6, 1X, 51A1)', x, y, c
  END DO
CONTAINS
  SUBROUTINE presentation
    INTEGER :: j

    IF (i /= 0) THEN
      c = " "
    ELSE
      c = (/ ('-', j=-25, 25) /)
    END IF
    c(-25) = 'I'
    c(0)   = 'I'
    c(25)  = 'I'
    c(NINT(25*y)) = '*'
  END SUBROUTINE presentation
END PROGRAM main
!
! $ time ./ex8_9.out 
!  Put the degree you need: 
! 40
! Legendre Polynomial P(40, x)
!  0.00    0.125371 I------------------------I--*---------------------I
!  0.05   -0.055153 I                       *I                        I
!  0.10   -0.076593 I                      * I                        I
!  0.15    0.123941 I                        I  *                     I
!  0.20   -0.037628 I                       *I                        I
!  0.25   -0.087888 I                      * I                        I
!  0.30    0.125116 I                        I  *                     I
!  0.35   -0.043883 I                       *I                        I
!  0.40   -0.075125 I                      * I                        I
!  0.45    0.132458 I                        I  *                     I
!  0.50   -0.095429 I                      * I                        I
!  0.55    0.003544 I                        *                        I
!  0.60    0.083642 I                        I *                      I
!  0.65   -0.133259 I                     *  I                        I
!  0.70    0.148344 I                        I   *                    I
!  0.75   -0.150838 I                    *   I                        I
!  0.80    0.160269 I                        I   *                    I
!  0.85   -0.164396 I                    *   I                        I
!  0.90    0.036987 I                        I*                       I
!  0.95    0.196833 I                        I    *                   I
!  1.00    0.999996 I                        I                        *
! 
! real	0m54.410s
! user	0m51.204s
! sys	0m0.293s
