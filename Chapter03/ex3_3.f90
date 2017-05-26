! ex3_3.f90
! Whether a leap year or not.
PROGRAM LeapOrNot
  INTEGER :: n

  PRINT *, "Is n year a leap or common year? n="
  READ *, n

  IF( MOD(n, 400) == 0) THEN
    PRINT *, "Leap year"
  ELSE IF( MOD(n, 100) == 0) THEN
    PRINT *, "Common year"
  ELSE IF( MOD(n, 4) == 0) THEN
    PRINT *, "Leap year"
  ELSE
    PRINT *, "Common year"
  END IF

END PROGRAM LeapOrNot

! $ ./ex3_3 
!  Is n year a leap or common year? n=
! 2000
!  Leap year
! $ runghc ex3_3.lhs 
! Is a leap or common year?
! 2000
! leap year
