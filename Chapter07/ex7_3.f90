! ex7_2.f90
! get the length of a word
PROGRAM WORDLENGTH
  CHARACTER (LEN=50) :: word
  INTEGER :: len
  DO
    PRINT *, "Input a word: "
    READ "(A50)", word
    IF (word == "") EXIT
! Eliminate empty " "
    DO len = 1, 50
      IF (word(len:len) == " ") EXIT
    END DO

    PRINT "( 'Word length =', I2)", len-1 

  END DO
END PROGRAM WORDLENGTH
