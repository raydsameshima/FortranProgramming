! ex9_3.f90
! pointer
PROGRAM main
  INTEGER, POINTER :: window(:,:)
  INTEGER, TARGET :: mat(1:8, 1:8)
  INTEGER :: i,j,m,n,k
  mat = RESHAPE( (/ (i, i=1, 64) /), SHAPE(mat) )

  PRINT*, "Choose column i,j (1<= i <= j <=8)"
  READ*, i,j
  PRINT*, "Choose row m,n (1<= m <= n <=8)"
  READ*, m,n

  window => mat(i:j, m:n)
  DO k=1, j-i+1
    PRINT '(8I5)', window(k,:)
  END DO
END PROGRAM main
!
! Using dynamic allocation (6.3) we can also write above as:
! 
! INTEGER, ALLOCATE :: partial(:,:)
! INTEGER :: mat (1:8, 1:8)
!  ..
! ALLOCATE( partial(j-i+1, m-n+1) )
! partial = mat(i:j, m:n)
!
! This method makes another copy (partial) of array.
