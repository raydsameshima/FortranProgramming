! ex7_2.f90
! rearrange chracters of a word
PROGRAM REARRANGE
  IMPLICIT NONE
  CHARACTER (LEN=5) :: w0,w1,w2,w(1:24)
  INTEGER :: i,j,k,n=1
  PRINT *, "Input a word in 4 letters:"
  READ "(A)", w0
  
  DO i=1,4
    w1 = w0(i:i) // w0(1:i-1) & ! empty when i=1
                 // w0(i+1:5)
    PRINT "(A,12A5)", "w1 is ", w1
    DO j=2,4
      w2 = w1(1:1) // w1(j:j) // w1(2:j-1) & ! empty when j=2
                              // w1(j+1:5)
      PRINT "(A, 12A5)", "w2's are ",  w2
      DO k=3,4
        w(n) = w2(1:2) // w2(k:k) // w2(3:k-1) & ! empty when k=3
                                  // w2(k+1:5)
        PRINT "(A,I2.2,A, 12A5)", "w(", n, ") is ", w(n)
        n = n+1
      END DO
    END DO
  END DO

  PRINT "(12A5)", w

END PROGRAM REARRANGE
!
! concatanation
! "For" // "tran" // "90" = "Fortran90"
! 
! w1(2,1) is equal to empty. 
!
! $ ./ex7_2.out 
!  Input a word in 4 letters:
!  1234
!  1234 1243 1324 1342 1423 1432 2134 2143 2314 2341 2413 2431 
!  3124 3142 3214 3241 3412 3421 4123 4132 4213 4231 4312 4321 
