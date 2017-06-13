! ex8_7.f90
!
PROGRAM main
  INTEGER :: n
  INTEGER, ALLOCATABLE :: a(:), b(:)
  n=3

  ALLOCATE( a(1:n), b(1:n) )
  a = (/ 1,2,3 /)
  b = (/ 2,1,4 /)
  PRINT*, maxa(a,b)
CONTAINS
  FUNCTION maxa(x,y)
    INTEGER :: maxa(1:n), x(1:n), y(1:n), i
    
    DO i=1,n 
      maxa(i) = MAX(x(i), y(i))
    END DO
  END FUNCTION maxa
END PROGRAM main
