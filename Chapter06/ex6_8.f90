! ex6_8.f90
! Eratosthenes sieve (with use of array function)
PROGRAM Sieve
  INTEGER, ALLOCATABLE :: index(:) ! 1d array
  INTEGER :: lim=0, n

  DO WHILE (lim <= 1)
    PRINT *, "Upper limit?"
    READ *, lim
  END DO

! here we use dynamical allocation:
  ALLOCATE (index(lim))
! initialize with 0,2,3,4 ..
  index = (/ 0, (n,n=2,lim) /)
  
! PRINT *, "The initial array is:"
! PRINT '(10I6)', index
! sieve
  DO n=2, INT(lim**0.5)
    IF (index(n)==0) CYCLE
    index(n**2 : lim : n) = 0 ! (initial, final, step)
  END DO

  PRINT '(A, I5, A)', &
    "After shieve, ", COUNT(index /= 0), "-primes are found."
  PRINT '(5I16)', PACK( index, index /= 0 )
END PROGRAM Sieve

! $ time ./ex6_8.out
! 
! ...
! 
!   99999931        99999941        99999959        99999971        99999989
! 
! real	0m12.336s
! user	0m4.750s
! sys	0m1.620s
