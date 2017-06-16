! pointer_array.f90
!
program main
  real, pointer :: p1(:), p2(:,:)
  real, target :: x(1:8, 1:8)
  integer :: i, s

  x = reshape( (/ (i, i=1, 64) /), shape(x) )
  p1 => x(1,:)
  p2 => x(1:4, 1:4)

  s = sum(shape(p1))
  print*, "p1 => x(1,:)"
  print*, "The shape of p1 is"
  print*, s
  print*, "and the values are"
  print "(sF10.4)", p1

  print*
  print*, "p2 => x(1:4, 1:4)"
  print*, "The shape p2 is"
  print*, shape(p2)
end program main
