! ex6_5.f90
! Napier number: exp(1)
! up to M-digits, 
!   e = 1 + (1/1)*(1 + (1/2)*(1 + (1/3)*(1 + ... + (1 + (1/M)))))
!     = 1 + 1 + (1/2)*(1 + (1/3)*(1 + ... + (1 + (1/M))))
!     = 2 + (1/2)*(1 + (1/3)*(1 + ... + (1 + (1/M))))
!
PROGRAM Napier
  INTEGER :: k, max, m, n, r, j
  INTEGER, ALLOCATABLE :: keta(:)
!
! input
  PRINT*, "How many digits do you want to calculate?"
  READ*, k
  ALLOCATE( keta(k) )
  keta = 0               ! all element
!
! finding upper limit for M(=max)
  max = k * log(10.0)    ! max is an INTEGER, rounded off.
!
! main loop
  DO m = max, 2, -1      ! reverse, but why?
    r = 1
    DO n = 1, k
      j = 10*r + keta(n)
      keta(n) = j/m      ! keta(n) is an integer.
      r = j - m*keta(n)  
    END DO
  END DO
!
  PRINT "(//' e = 2.', 10(1X, 5I1)/(7X, 10(1X, 5I1)))", keta
END PROGRAM Napier
