! ex6_9.f90
! Voter rule, like a life game
! Under periodic boundary condition, a voter will make their decision
! via their nearest neighborhood.
PROGRAM VoterRule
  INTEGER :: voter(1:20), neighbors(1:20), i=0
  
  PRINT *, "Input initial bits (i.e., 01 sequence) for members:"
! READ *, voter(1:20)
  READ "(20I1)", voter(1:20)
  PRINT '(I3, ":",20I2)',i , voter(1:20)

  DO i=1, 10 
    neighbors = CSHIFT(voter, 1) + CSHIFT(voter, -1)
! If 1 then use original bit, else change the mind with neighbors.
    WHERE (neighbors /= 1) voter = neighbors/2
    PRINT '(I3, ":", 20I2)', i, voter(1:20)
  END DO

END PROGRAM VoterRule
