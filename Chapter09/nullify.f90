! nullify.f90
!
program main
  integer, pointer :: p,q
  integer, target  :: x,y

  p => x
  nullify(q)

  print*, associated(p) ! T
  print*, associated(q) ! F
  print*, "Even if x is not defined yet, p is assciated."

  p => q
  print*
  print*, associated(p)   ! F
  print*, associated(p,q) ! F
  print*, "Since q is still empty."

  q => y
  print*
  print*, associated(q,y) ! T
  print*, associated(p,y) ! F 
  print*, "Since p becomes empty"

  p => q
  print*
  print*, associated(p,q)
  print*, associated(p,y)
  print*, "Since p points q, and q is not empty now."
end program main
