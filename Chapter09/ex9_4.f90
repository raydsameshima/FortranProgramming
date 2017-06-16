! ex9_4.f90
! List, recursive data structure using pointer
program usage_of_pointer
  implicit none
  type unit
    character(len=12)   :: name
    integer             :: mark
    type(unit), pointer :: next 
  end type unit

  character(len=12) :: namae
  integer :: tensu
  type(unit), pointer :: ent, new, p
  integer :: switch

  allocate(ent)
  nullify(ent%next) ! empty

  print*, "If you want to have the grades as is, put 0,"
  print*, "or put 1 from high to low:"
  read*, switch

  do
    print*, "Input name up to 12 char (or [ENTER]-key to stop):"
    read(*, "(A)") namae
    if ( namae == " ") exit ! this is the termination condition
    print*, "Input student's mark here:"
    read*, tensu
    if (switch == 1) then
      call rearrange
    else if (switch == 0) then
      call asis
    else
      print*, "Anyway, here is the list, as is:"
      call rearrange
    end if
  end do

  p => ent%next

  do while( associated(p) ) ! until p points empty
    print "(a12, i4)", p%name, p%mark
    p => p%next
  end do  

  contains
    subroutine asis
      allocate(new)
      new = unit(namae, tensu, ent%next)
      ent%next => new
    end subroutine asis

    subroutine rearrange
      allocate(new)
      p => ent
      do while ( associated(p%next) )
        if( tensu > p%next%mark) exit
        p => p%next
      end do  
      new = unit(namae, tensu, p%next) 
      p%next => new
    end subroutine rearrange

end program usage_of_pointer
!
! $ ./ex9_4.out 
!  Input name (or [ENTER]-key to stop):
! aaa
!  Input student's mark here:
! 99
!  Input name (or [ENTER]-key to stop):
! bbb
!  Input student's mark here:
! 75
!  Input name (or [ENTER]-key to stop):
! ccc
!  Input student's mark here:
! 89
!  Input name (or [ENTER]-key to stop):
! 
! ccc           89
! bbb           75
! aaa           99
!
! The data structure looks like
!
!                     unit(a,99,null_pointer)
!                     ^
!                     |
!           unit(b,75,+)
!           ^
!           |
! unit(c,89,+)
!
! So basically this process is just a consing.
