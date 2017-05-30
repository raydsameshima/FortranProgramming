! ex5_2.f90
! A table for sin and cosine from 0 deg to 90 deg.

PROGRAM TableOfSinCos
  Real, Parameter :: RAD = 3.1415926/180.0
  Real :: r, s, c
  Integer :: k
  
  Print *, "Degree, sin, cos, check"
  DO k = 0, 90, 5
    r = k*RAD; s = Sin(r); c = cos(r)
!   Print *, k,s,c,s**2+c**2
    Print "(1X,I3,2X,3F10.5)",k,s,c,s**2+c**2
  END DO

END PROGRAM TableOfSinCos
!
! "(1X,I3,2X,3F10.5)"
! 1X for a space at the top
! I3 for 3-spaces for Integers
! 2X for 2 spaces
! 3F10.5 for 5-digits precision for 3 real numbers 
! $ ./ex5_3.out 
!  Degree, sin, cos, check
!    0     0.00000   1.00000   1.00000
!    5     0.08716   0.99619   1.00000
!   10     0.17365   0.98481   1.00000
!   15     0.25882   0.96593   1.00000
!   20     0.34202   0.93969   1.00000
!   25     0.42262   0.90631   1.00000
!   30     0.50000   0.86603   1.00000
!   35     0.57358   0.81915   1.00000
!   40     0.64279   0.76604   1.00000
!   45     0.70711   0.70711   1.00000
!   50     0.76604   0.64279   1.00000
!   55     0.81915   0.57358   1.00000
!   60     0.86603   0.50000   1.00000
!   65     0.90631   0.42262   1.00000
!   70     0.93969   0.34202   1.00000
!   75     0.96593   0.25882   1.00000
!   80     0.98481   0.17365   1.00000
!   85     0.99619   0.08716   1.00000
!   90     1.00000  -0.00000   1.00000
