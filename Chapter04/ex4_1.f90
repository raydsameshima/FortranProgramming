! ex4_1.f90
! solar year
! A year is given in 365 + 1/4 -1/100 + 1/400 .., about
!  365.2422
! days (the above formula gives us 365.2425 days.)
Program SolarYear
  Implicit none
  Real :: year, day, hour, minit, sec
  Integer :: d,h,m

  year = 365.2422
  day   = Aint(year);               d = Int(day)
  hour  = 24.0*(year - day);        h = Int(hour)
  minit = 60.0*(hour - Aint(hour)); m = Int(minit)
  sec   = 60.0*(minit - Aint(minit))

  Print *, "A year is ", d, " days, ", h, " hours, ", m, &
           " minits, and ", sec, " seconds."
End Program SolarYear
