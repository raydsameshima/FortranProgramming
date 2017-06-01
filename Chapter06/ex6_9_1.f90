! ex6_9_1.f90
! voter rule as rule-232 CA rule
! cell-automaton
PROGRAM Rule_232
  INTEGER :: voter(1:20), i=0, rule = 232, map(0:7), n
  map = (/ (IBITS(rule, n, 1), n=0, 7) /)
!
  PRINT*, "Input initial bits for 20 members:"
  READ '(20I1)', voter(1:20)
  PRINT '(I3, ":", 20I2)', i, voter(1:20)
!
  DO i=1, 5
    voter = map( 4*CSHIFT(voter, -1) + 2*voter + CSHIFT(voter, 1) )
    PRINT '(I3, ":", 20I2)', i, voter(1:20)
  END DO
! 
END PROGRAM Rule_232
