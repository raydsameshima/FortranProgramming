! ex8_1.f90
!
PROGRAM main
  IMPLICIT NONE
  INTEGER :: i,j,k

  PRINT*, "Put three integers:"
  READ*, i,j,k
    IF(i<j) CALL swap(i,j)
    IF(j<k) CALL swap(j,k)
    IF(i<j) CALL swap(i,j)
  PRINT*, i,j,k
END PROGRAM main
!
SUBROUTINE swap(p,q)
  INTEGER, INTENT(INOUT) :: p,q
  INTEGER :: r

  r=p ! temp
  p=q ! swap
  q=r
END SUBROUTINE swap
