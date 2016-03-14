! ex5_2.f90
! A table for sin and cosine from 0 deg to 90 deg.

PROGRAM TableOfSinCos
  Real, Parameter :: RAD = 3.1415926/180.0
  Real :: r, s, c
  Integer :: k
  
  Print *, "Degree, sin, cos, check"
  DO k = 0, 90, 5
    r = k*RAD; s = Sin(r); c = cos(r)
!    Print *, k,s,c,s**2+c**2
    Print "(1X,I3,2X,3F10.5)",k,s,c,s**2+c**2
  END DO

END PROGRAM TableOfSinCos
!
! "(1X,I3,2X,3F10.5)"
! 1X for a space at the top
! I3 for 3-spaces between Integers
! 2X for 2 spaces
! 3F10.5 for 5-digits precision for 3 real numbers 
