! ex6_7.f90
! trancation
PROGRAM Trancation
  INTEGER :: m=0, n=0
  REAL, ALLOCATABLE :: a(:,:)

  DO WHILE( m <= 0 .OR. n <= 0 )
    PRINT*, "Input array size m, n (>0):"
    READ*, m,n
  END DO

  ALLOCATE( a(1:m, 1:n) )
  PRINT*, "Input elements of A:"
  READ*, ( a(i,1:n), i=1,m )

  WHERE(a < 0) a = 0.0 ! if the element is negative, replace it 0.0
  DO i=1, m
    PRINT "(10F8.5)", a(i, 1:n)
  END DO
END PROGRAM Trancation
