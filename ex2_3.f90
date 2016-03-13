! ex2_3.f90
! Given integer n, return n, .. n**5.
PROGRAM SquareToFifth
  INTEGER :: m, n
  PRINT*, "Input an integer:"
  READ*, n
    m = n
    m = n**2; PRINT*, "(Input)**2 = ", m
    m = n**3; PRINT*, "(Input)**3 = ", m
    m = n**4; PRINT*, "(Input)**4 = ", m
    m = n**5; PRINT*, "(Input)**5 = ", m
END PROGRAM SquareToFifth
