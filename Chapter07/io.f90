! io.f90
PROGRAM io
  CHARACTER(LEN=40) :: file_name

  PRINT*, "Put a file for output data: "
  READ '(A)', file_name
  OPEN(8, FILE = TRIM(file_name))
  WRITE(8, '(10I4)') (n**2, n=2,20,2)
  CLOSE(8)
END PROGRAM io
