! ex4_4.f90
! calender
! How many days from 0001/01/01 to n/12/31?
PROGRAM Cal
  Integer :: n, s

  Print *, "Input a year:"
  Read *, n
  s = 365*n + n/4 - n/100 + n/400 ! Integer/Integer = Integer!
  Print *, n, "year, 12/31 is ", s, " days after 0001/01/01." 
END PROGRAM Cal
