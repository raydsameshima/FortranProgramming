! ex6_6.f90
! matrix product; (m,n) * (n,m)
PROGRAM Matrix
  INTEGER, DIMENSION(:,:), ALLOCATABLE :: a,b,c ! 2 indices i.e. matrix
  INTEGER :: m=0, n=0, k=0, i, j, h
!
  DO WHILE( m <= 0 .OR. n <= 0 .OR. k <= 0 )
    PRINT*, "Input array size m,n,k (>0) :"
    READ*, m, n, k
  END DO
  ALLOCATE( a(m,n), b(n,k), c(m,k) ) ! c is given by a*b

  PRINT*, "Input elements of A in a matrix form:"
    READ*, ( ( a(i,j), j=1, n), i=1, m )
  PRINT*, "Input elements of B in a matrix form:"
    READ*, ( ( b(i,j), j=1, k), i=1, n )

  DO i=1, m
    DO j=1, k
      c(i,j) = 0 ! initialize
      DO h = 1, n
        c(i,j) = c(i,j) + a(i,h) * b(h,j)
      END DO
    END DO
  END DO

  DO i=1, m
    PRINT "(10I5)", ( c( i, j), j=1, k)
  END DO

END PROGRAM Matrix
