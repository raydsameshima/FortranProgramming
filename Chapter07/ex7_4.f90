! ex7_4.f90
! bubble sort
PROGRAM ex7_3_bubble_sort
  CHARACTER(LEN=15) :: word(100), wtemp
  INTEGER :: num, n, m

  DO num = 1, 100
    PRINT *, "Input a word (at most 15 letters, less than 100 words):"
    READ "(A)", wtemp
    IF (wtemp == "") EXIT
    word(num) = wtemp
  END DO

  num = num - 1 ! num as a counter becomes the number of words + 1.
  
  DO n=num, 2, -1 ! reversed order
    DO m=1, n-1
      IF(word(m) > word(m+1)) THEN
        wtemp     = word(m)   ! temporary data for swapping
        word(m)   = word(m+1)
        word(m+1) = wtemp
      END IF  
    END DO
  END DO

  DO n=1, num
    PRINT *, word(n)
  END DO
END PROGRAM ex7_3_bubble_sort

