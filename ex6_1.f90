! ex6_1.f90
! sort
program ex6_1_sorting
  integer :: m, mark(1:100), n=0, max, maxi, i, j

  do while(n <= 99)
    print*, "Input integer, or negative one to stop:"
    read*, m
    if(m <= 0) exit
    mark(n) = m
    n = n + 1
  end do

! sorting
  do i = 1, n-1
    max = mark(i)
    maxi = i
    do j = i+1 , n
      if(mark(j) > max) then
        max = mark(j)
        maxi = j
      end if
    end do
    if(maxi /= i) then
      mark(maxi) = mark(i)
      mark(i) = max
    end if
  end do

! output
  do i = 1, n
    print "( ' Rank', I3, ' =', I10 )", i, mark(i)
  end do

end program ex6_1_sorting
