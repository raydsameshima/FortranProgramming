! initialize.f90
!
PROGRAM main
  INTEGER :: n

  PRINT*, "Using bad_count, the second call returns wrong result."
  CALL bad_count(n)
  PRINT*, n
  CALL bad_count(n)
  PRINT*, n

  PRINT*, "The difference is the initialization position."
  CALL count(n)
  PRINT*, n
  CALL count(n)
  PRINT*, n

END PROGRAM main

SUBROUTINE bad_count(n)
  INTEGER :: sum = 0
  
  DO i=1, 10
    sum = sum + i
  END DO
  n=sum
END SUBROUTINE bad_count

SUBROUTINE count(n)
  INTEGER :: sum
  
  sum = 0 ! Every time called, sum is initialized.
  DO i=1, 10
    sum = sum + i
  END DO
  n=sum
END SUBROUTINE count
! 
! $ ./initialize.out 
!  Using bad_count, the second call returns wrong result.
!           55
!          110
!  The difference is the initialization position.
!           55
!           55
