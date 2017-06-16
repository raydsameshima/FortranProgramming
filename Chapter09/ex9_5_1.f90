! ex9_5_1.f90
! cyclic permutation of 1d array
! using contains, we don't need to tell the prgram the interface.
program main
! interface
!   subroutine cyclic(q)
!     integer, pointer :: q(:)
!   end subroutine cyclic
! end interface

  integer, pointer :: p(:)
  integer, target  :: x(1:5)

  x = (/ (i,i=1,5) /)
  p => x
  print*, "before:"
  print*, x
  call cyclic(p)
  print*
  print*, "after:"
  print*, x

  contains 

  subroutine cyclic(q)
    integer, pointer :: q(:)
    q = cshift( q,1 )
  end subroutine cyclic
end program main
