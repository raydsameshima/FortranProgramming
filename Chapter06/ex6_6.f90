! ex6_6.f90
! matrix product; (m,n) * (n,m)
PROGRAM Matrix
  INTEGER, DIMENSION(:,:), ALLOCATABLE :: a,b,c ! 2 indices i.e. matrix
  INTEGER :: m=0, n=0, k=0, i, j, h

  DO WHILE (m <= 0 .OR. n <= 0 .OR. k <= 0)
    PRINT *, "Input array size m,n,k (>0) :"
    READ *, m, n, k
  END DO
! I wanted to display a matrix form of a(i,j) here.
!  DO i=1, m
!    PRINT '(A, I2, A, I2, A)', ("a(", i, ",", j, ")", j=1,n)
!  END DO   
  ALLOCATE (a(m,n), b(n,k), c(m,k)) ! c will be given by a*b (matrix product)

  PRINT *, "Input elements of A in a matrix form:"
  READ *, ((a(i,j), j=1, n), i=1, m)
  PRINT *, "SHAPE function gives us the size of A; SHAPE(a)= ", SHAPE(a)
  PRINT *, "A =" 
  DO i=1, m
    PRINT "(10I5)", (a(i,j), j=1, n)
  END DO

  PRINT *, "Input elements of B in a matrix form:"
  READ *, ((b(i,j), j=1, k), i=1, n)
  PRINT *, "B =" 
  DO j=1, k
    PRINT "(10I5)", (b(i,j), i=1, n)
  END DO

  PRINT *, "So, the matrix product of A and B is"
  DO i=1, m
    DO j=1, k
      c(i,j) = 0 ! initialize
      DO h = 1, n
        c(i,j) = c(i,j) + a(i,h) * b(h,j)
      END DO
    END DO
  END DO

  DO i=1, m
    PRINT "(10I5)", (c(i,j), j=1, k)
  END DO

END PROGRAM Matrix
