! ex9_7.f90
! user_define operation
! projection of a vector
module vector_arithmetic
  implicit none
    type vector
      real :: x,y,z
    end type
  
    interface operator(-)
      module procedure subtraction
    end interface 
  
    interface operator(*)
      module procedure scalar_mult
    end interface
  
    interface operator(*)
      module procedure inner_prod
    end interface
  contains
    function subtraction(u,v) result(w)
      type(vector), intent(in) :: u,v
      type(vector) :: w
  
      w%x = u%x - v%x
      w%y = u%y - v%y
      w%z = u%z - v%z
    end function subtraction
  
    function scalar_mult(s,v) result(w)
      real, intent(in)         :: s
      type(vector), intent(in) :: v
      type(vector) :: w
  
      w%x = s * v%x
      w%y = s * v%y
      w%z = s * v%z
    end function scalar_mult
  
    function inner_prod(u,v) result(s)
      type(vector), intent(in) :: u,v
      real :: s
  
      s = (u%x * v%x) + (u%y * v%y) + (u%z * v%z)
    end function inner_prod
end module vector_arithmetic

program main
  use vector_arithmetic
  implicit none
  type(vector) :: a,n,perp,planar
  
  print*, "Input the normal vector of projection-plane:"
  read*, n
  print*, "Input a 3-vector:"
  read*, a

  perp   = ( (a*n) / (n*n) ) * n ! (/) is binary scalar operation
  planar = a - perp              ! This (-) is vector operation

  print '(A, 3F7.2,A)', "Perp. component   = (", perp, "  )"
  print '(A, 3F7.2,A)', "Planar. component = (", planar, "  )"

end program main
