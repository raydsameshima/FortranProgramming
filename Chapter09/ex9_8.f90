! ex9_8.f90
! vector and array
module vector_and_array
    implicit none
    type vector
      real :: x,y,z
    end type vector
  
    interface assignment(=)
      module procedure vector_to_array
    end interface
    
    interface assignment(=) 
      module procedure array_to_vector
    end interface
  contains
    subroutine vector_to_array(a,v)
      implicit none
      type(vector), intent(in) :: v
      real, intent(out) :: a(1:3)

      a = (/ v%x, v%y, v%z /)
    end subroutine vector_to_array

    subroutine array_to_vector(v,a)
      real, intent(in) :: a(1:3)
      type(vector), intent(out) :: v
      v = vector( a(1), a(2), a(3) )
    end subroutine array_to_vector
end module vector_and_array

program main
  use vector_and_array
  implicit none
  type(vector) :: u
  real :: w(1:3)
  print*, "Input 3D-vector components:"
  read*, u
  w = u       ! w as an array
  u = 2.0 * w ! 
  print '(3F8.3)', u
end program main
