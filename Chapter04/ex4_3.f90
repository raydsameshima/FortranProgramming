! ex4_3.f90
! Double precision of sin and cos.
PROGRAM DoublePrecision
  Real(8) :: deg, rad, s, c
  Real(8), Parameter :: pi = 3.141592653589793_8 ! number_8 for double

  Print *, "Input angle variable in degree:"
  Read *, deg; rad = pi*deg/180.0_8
  s = Sin(rad); c = Cos(rad)
  Print *, "Sine = ", s, ", Cosine = ", c
  Print *, "Cos^2 + Sin^2 = ", s**2 + c**2
  
END PROGRAM DoublePrecision
