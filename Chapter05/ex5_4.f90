! ex5_4.f90
! mean and standard deviation
PROGRAM MeanAndSigma
  Integer :: n=0, i, mark
  Real :: w = 0.0, v = 0.0, mean, sd

  DO
    Print "(A,$)", "Input a grade(Integer, quit for a negative number): "
    Read *, mark
      If(mark < 0) EXIT
    n = n + 1; w = w + mark; v = v + mark**2 ! v becomes a sum of squares.
  END DO

  If(n > 0) Then
    mean = w/n; sd = Sqrt(v/n - mean**2)
    Print '( "mean = ", F5.1)', mean
    Print '( "standard deviation = ", F5.1)', sd
  END If

  Print '( "the number of students =", I5)', n
END PROGRAM MeanAndSigma
