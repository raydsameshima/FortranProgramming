! ex6_8.f90
! Eratosthenes sieve (with use of array function)
PROGRAM Sieve
  INTEGER, ALLOCATABLE :: index(:)
  INTEGER :: lim=0, n
!  
  DO WHILE( lim <= 1 )
    PRINT*, "Upper limit?"
    READ*, lim
  END DO
!
! here we use dynamical allocation:
  ALLOCATE( index(lim) )
  index = (/ 0, (n,n=2, lim) /)
!
  DO n=2, INT( lim**0.5 )
    IF( index(n)==0 ) CYCLE
    index(n**2 : lim : n) = 0 ! sieve
  END DO
!
  PRINT '(I5, A)', COUNT(index /= 0), "-primes are found."
  PRINT '(10I6)', PACK( index, index /= 0 )
END PROGRAM Sieve
