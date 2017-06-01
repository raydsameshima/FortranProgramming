! ex6_4.f90
! Eratosthenes Sieve
PROGRAM Sieve
  IMPLICIT NONE
  INTEGER :: index(10000), prime(10000), lim = 0, n, m=0
!
! for input
  DO WHILE( lim <= 1 .OR. lim > 10000 )
    PRINT '(A,$)', "Upper limit(<10000): "
    READ*, lim
  END DO
!
  index = 1                     ! here all element in array becomes 1
!
! sieve algorithm
  DO n = 2, INT( lim**0.5 )
    IF( index(n) == 0 ) CYCLE   ! see 5.3.1
    index( n**2 : lim : n ) = 0 ! sieve, 1 is the mark for primes
  END DO
!
  DO n = 2, lim
    IF( index(n) == 1 ) THEN
      m = m + 1
      prime(m) = n
    END IF
  END DO
!
  PRINT '(I5,A)', m, "-primes are found."
  PRINT '(10I5)', prime(1:m)
!
END PROGRAM Sieve
