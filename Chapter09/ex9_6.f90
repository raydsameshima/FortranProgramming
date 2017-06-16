! ex9_6.f90
! using module
! string haveing variable length
module var_str
  type v_str
    character(len=80) :: str
    integer           :: len
  end type v_str

  contains

  function length(s)
!   character*(*), intent(in) :: s 
    character(len=*), intent(in) :: s  ! length will be given 
    integer :: length,i,ls
    
    ls = len(s)
    if( s(ls:ls) /= " ") then          ! trimming, erase the last spaces
      length = ls
    else if( s(ls-1:ls-1) /= " ") then
      length = ls-1
    else
      length = index(s, "  ") - 1      ! double spaces
    end if
!   length = len_trim(s)
  end function length

end module var_str

program main
  use var_str
  type(v_str) :: vst

  print*, "Input a sentence here (less than 80 char, &
          &no sequential spaces):"
  read "(A)", vst%str
  vst%len = length(vst%str)
  print "(A, '(', I2, ')' )", vst%str(1:vst%len), vst%len
end program main
