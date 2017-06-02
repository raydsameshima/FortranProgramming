! ex6_9_1.f90
! voter rule as rule-232 Cell-Automaton rule
PROGRAM Rule_232
  INTEGER :: voter(1:20), i=0, rule = 232, map(0:7), n
  map = (/ (IBITS(rule, n, 1), n=0, 7) /)

  PRINT *, "Give me a rule (0 to 255) of celluer automaton, e.q. &
            232 for voter rule, 184 for traffic jam model."
  READ *, rule

  PRINT *, "Input initial bits for 20 members:"
  READ '(20I1)', voter(1:20)
  PRINT '(I3, ":", 20I2)', i, voter(1:20)

  DO i=1, 5
    voter = map( 4*CSHIFT(voter, -1) + 2*voter + CSHIFT(voter, 1) )
    PRINT '(I3, ":", 20I2)', i, voter(1:20)
  END DO
 
END PROGRAM Rule_232
! 
! Celluer Automaton model
! A map between two bits, determined by the both sides.
! Let us write three elements of bits as
!   [1,0,1]
! Then the rule 232 becomes the following truth table:
!   [1,1,0] -> 1
!   [1,1,1] -> 1
!   [1,0,0] -> 1
!   [1,0,1] -> 0
!   [0,1,0] -> 1
!   [0,1,1] -> 0
!   [0,0,0] -> 0
!   [0,0,1] -> 0
! 
!   11101000 (in 2) = 128+64+32+0+8+0+0+0 (in 10)
!                   = 232
! 
