! ex6_1.f90
! sorting array elements
program ex6_1_sorting
! integer :: m, mark(1:100), n=0, max, maxi, i, j
  integer :: m, n=0, max, maxi, i, j
  integer, dimension(1:100) :: mark

  do while (n <= 99)
    print *, "Input integer, or zero to stop:"
    read *, m
    if (m <= 0) exit
    mark(n) = m ! assignment
    n = n + 1
  end do
! selection sort
  do i = 1, n-1
    max = mark(i)
    maxi = i
    do j = i+1 , n
      if (mark(j) > max) then
        max = mark(j)
        maxi = j
      end if
    end do
    if (maxi /= i) then
      mark(maxi) = mark(i)
      mark(i) = max
    end if
  end do
! output
  do i = 1, n
    print "( ' Rank', I3, ' =', I10 )", i, mark(i)
  end do
end program ex6_1_sorting
!  
!      4,5,1,2,3
!  i=1
!      5,4,1,2,3
!  i=2 
!      5,4,3,2,1
!  i=3,4,5
!      5,4,3,2,1
!    

