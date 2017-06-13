! ex8_5.f90
!
SUBROUTINE choice(kk,n1,n2)
  INTEGER, INTENT(IN) :: n1,n2
  INTEGER, INTENT(OUT) :: kk(n1)
  INTEGER :: i,ir,j
  REAL :: k
  kk = (/ (i, i=1, n1) /) ! 1D array, not determined yet

  PRINT*, "Put a seed for random numbers (the bigger, the better): "
  READ*, ir
  DO i=1, MIN(n1,n2)
    CALL ran(ir,x)                ! 0<x<1 :: random, or use RANDOM_NUMBER(x)
    j = i + INT( x*(n1 - i + 1) ) ! pick j from the "rest", i<j<=n1
    CALL swap( kk(j), kk(i) )     ! put it at i-th
  END DO
END SUBROUTINE choice

SUBROUTINE swap(i,j)
  INTEGER, INTENT(INOUT) :: i,j
  INTEGER :: temp

  temp = i
  i    = j
  j    = temp
END SUBROUTINE swap

SUBROUTINE ran(i,r)
  INTEGER, INTENT(INOUT) :: i
  REAL, INTENT(OUT) :: r
  INTEGER, PARAMETER :: mask = 2147483647, a = 48828125
!                            = 2**31-1       = 5**11
  i = IAND( a*i, mask )
  r = REAL(i)/REAL(mask)
END SUBROUTINE ran
 
PROGRAM main
  INTEGER, ALLOCATABLE :: number(:) ! 1D array
  INTEGER :: n,m,i

  PRINT*, "How many applicants?"
  READ*, n
  PRINT*, "How many elected?"
  READ*, m
  ALLOCATE( number(n) )
  CALL choice(number,n,m)

  PRINT*," rank    #"
  DO i=1, MIN(n,m)
    PRINT "(2X, I4, I8)", i, number(i)
  END DO
END PROGRAM main

