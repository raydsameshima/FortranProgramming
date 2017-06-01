! ex6_9.f90
! Voter rule, like a life game
PROGRAM VoterRule
  INTEGER :: voter(1:20), neighbors(1:20), i=0
!  
  PRINT*, "Input initial bits for members:"
  READ*, voter(1:20)
  PRINT '(I3, ":",20I2)',i , voter(1:20)
!
  DO i=1, 10 
    neighbors = CSHIFT( voter, 1 ) + CSHIFT( voter, -1 )
    WHERE( neighbors /= 1 ) voter = neighbors/2
    Print '(I3, ":", 20I2)', i, voter(1:20)
  END DO
!
END PROGRAM VoterRule
