! ex2_2.f90
! The volume and surface area of a cone.

PROGRAM VolAndSur
  REAL :: pi, r , h, v, s
  pi = 3.141593
  PRINT *, "Radius, height :"
  READ *, r, h
    v = (pi*h*r**2)/3.0
    s = pi*r*(r + (r**2 + h**2)**0.5)
  PRINT *, "The volume is: v =      ", v
  PRINT *, "The surface are is: s = ", s
END PROGRAM VolAndSur

! $ ./ex2_2.out 
!  Radius, height :
! 100 1
!  The volume is: v =         10471.9766    
!  The surface are is: s =    62833.4336   
