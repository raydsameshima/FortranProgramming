! ex6_7.f90
! truncation
PROGRAM Truncation
  INTEGER :: m=0, n=0
  REAL, ALLOCATABLE :: a(:,:) ! 2d array

  DO WHILE( m <= 0 .OR. n <= 0 )
    PRINT *, "Input array size m, n (>0):"
    READ *, m, n
  END DO

  ALLOCATE (a(1:m, 1:n))
  PRINT *, "Input elements of A:"
  READ *, (a(i,1:n), i=1,m)
  PRINT *, "The original array is"
  DO i=1, m
    PRINT "(10F8.5)", a(i, 1:n)
  END DO
! if the element is negative, replace it with 0.0
  WHERE(a < 0) a = 0.0 

  PRINT *, "We replace negative elements by 0s:"
  DO i=1, m
    PRINT "(10F8.5)", a(i, 1:n)
  END DO
END PROGRAM Truncation
