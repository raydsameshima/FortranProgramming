! ex9_5.f90
! cyclic permutation of 1d array
program main
  interface                    ! see 8.4.2
    subroutine cyclic(q)
      integer, pointer :: q(:)
    end subroutine cyclic
  end interface

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
end program main

subroutine cyclic(q)
  integer, pointer :: q(:)
  q = cshift( q,1 )
end subroutine cyclic
!
! Once we comment out line 4-8, it returns the following error-message
!
! $ gfortran -o ex9_5.out ex9_5.f90 
! ex9_5.f90:17:13:
! 
!    call cyclic(p)
!              1
! Error: Explicit interface required for 'cyclic' at (1): pointer argument
