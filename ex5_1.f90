! ex5_1.f90
! square sum from 1 to 100
PROGRAM SumOfSquares
  Integer :: n, sum = 0

  Do n = 1, 100
    sum = sum + n*n
  END Do

  Print *, "sum of squre from 1 to 100 =", sum

END PROGRAM SumOfSquares
!
! ./ex5_1
! sum of squre from 1 to 100 =      338350
!
! Prelude> sum $ map (^2) [1..100]
! 338350
