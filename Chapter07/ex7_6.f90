! ex7_6.f90
! character code table
PROGRAM char_code_tbl
  INTEGER :: i,j

  OPEN(8, FILE="Code_Table.txt")
  DO i=0, 31
    WRITE(8, "(7(2X, I3, 2X, A))") (i+32*j, CHAR(i+32*j), j=1,7)
  END DO
  CLOSE(8)
END PROGRAM char_code_tbl
