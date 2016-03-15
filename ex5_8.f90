! ex5_8.f90
PROGRAM RoundOff
  Real :: n, d = 0.00000001
  Integer :: k

  DO k = 0, 100000000
    n = n + d
  END DO

  PRINT*, "The last result shold be 1, but n =", n, &
          " by ", k-1, "cycles."

END PROGRAM RoundOff
! $ time ./ex5_8
!  The last result shold be 1, but n =  0.250000000      by    100000000 cycles.
! 
! real  0m0.536s
! user  0m0.517s
! sys 0m0.006s
