! ex8_6.f90
! trace of n**2 matrix
PROGRAM main
  implicit none
  INTERFACE
    REAL FUNCTION trace(sqr)
      REAL, INTENT(IN) :: sqr(:,:)
    END FUNCTION trace
  END INTERFACE

  REAL, ALLOCATABLE :: a(:,:)
  INTEGER :: n,i
  PRINT*, "Put n of square matrix (n*n):"
  READ*,n
  ALLOCATE( a(n,n) )
    DO i=1,n
      PRINT '(A, I2, A)', "Put ", i, "-th column:"
      READ*, a(i,1:n)
    END DO
    PRINT '(A, F7.4)', "trace = ", trace(a)
END PROGRAM main

FUNCTION trace(x) RESULT(tr)
  REAL, INTENT(IN) :: x(:,:)
  REAL :: tr
  INTEGER :: n1, n2, i

  n1 = SIZE(x,1)
  n2 = SIZE(x,2)
  IF (n1 /= n2) THEN
    PRINT*, "It must be a square matrix."
  ELSE
    tr = 0.0
    DO i = 1, n1
      tr = tr + x(i,i)
    END DO
  END IF
END FUNCTION
