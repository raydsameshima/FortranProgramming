! ex8_8.f90
! returns 3-distance x*x + y*y + z*z
! if time is also given, then
! returns 4-distance ss = x*x + y*y + z*z - t*t
FUNCTION space_time(x,y,z,time) RESULT(ss)
  IMPLICIT NONE
  REAL, INTENT(IN) :: x, y, z
  REAL, INTENT(IN), OPTIONAL :: time
  REAL :: ss

  ss = x*x + y*y + z*z
  IF( PRESENT(time) ) THEN ! Boolean function
    ss = ss - time*time
  END IF
END FUNCTION space_time

PROGRAM main
  INTERFACE
    REAL FUNCTION space_time(x,y,z,t)
      REAL, INTENT(IN) :: x,y,z
      REAL, INTENT(IN), OPTIONAL :: t
    END FUNCTION space_time
  END INTERFACE

  REAL :: a,b,c,t
  a = 1.0; b = 2.0; c = 1.0
  PRINT*, space_time(x=a,y=b,z=c)
  t=1.5
  PRINT*, space_time(a,b,c,t)
END PROGRAM main
