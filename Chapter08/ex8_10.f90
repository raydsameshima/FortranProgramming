! ex8_10.f90
! Partition of integer
PROGRAM main
  IMPLICIT NONE
  INTEGER :: n,i,kind,id
  INTEGER, ALLOCATABLE :: parts(:)

  DO
    PRINT*, " Select Case(0): N into arbitrary natural numbers"
    PRINT*, "        Case(1): N into distinct natural numbers"
    PRINT*, "        Default: exit"
!   WRITE(*,'(A)',ADVANCE='no') "Choose a case (either 0 or 1): "
    PRINT*, "Choose a case:"
    READ*, id
      IF(id < 0 .OR. id > 1) EXIT
!   WRITE(*,'(A)',ADVANCE='no') " n ? "
    PRINT*, " Put n here:"
    READ*, n
    ALLOCATE( parts(n) )
    i=0
    kind=0
    parts=0
    PRINT* ! to make a new line
    CALL Partition(n,n)
    DEALLOCATE(parts)
    PRINT "(' Problem (', I1,') for n =', I3 /)", id, n
  END DO
CONTAINS
  RECURSIVE SUBROUTINE Partition(p,px)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: p,px
    INTEGER :: k, ist

    IF(p == 0) THEN
      kind = kind + 1
      PRINT "( I6, ') ', 80I3 )", kind, parts(1:i)
    ELSE
      DO k=px, 1, -1  ! reverse order k=px,px-1 ..
        ist = i       ! temp
        i = i+1
        parts(i) = k
        CALL Partition( p-k, min(p-k,k-id) )
        i=ist
      END DO
    END IF
  END SUBROUTINE Partition
END PROGRAM main
!
! $ ./ex8_10.out
!   Select Case(0): N into arbitrary natural numbers
!          Case(1): N into distinct natural numbers
!          Default: exit
!  Choose a case:
! 0
!   Put n here:
! 5
! 
!      1)   5
!      2)   4  1
!      3)   3  2
!      4)   3  1  1
!      5)   2  2  1
!      6)   2  1  1  1
!      7)   1  1  1  1  1
!  Problem (0) for n =  5
