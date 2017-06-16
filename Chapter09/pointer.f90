! pointer.f90
!
program main
  real, pointer :: p,q
  real, target  :: x,y

  p => x
  q => y
  x = 1.0
  y = 2.0

  print*, "Initially we put" 
  print*, "  p=>x; q=>y"
  print*, "  x=1.0; y=2.0"
  
  print*
  print*, "p shows"
  print*, p ! 1.00000000
  print*, "since p points x (=1.0)."

  y = p + q

  print*,
  print*, "y=p+q, then q becomes"
  print*, q ! 3.00000000
  print*, "since q points y, and it becomes p+q, i.e., x+y=3.0."

  p = q

  print*,
  print*, "p=q, then p becomes"
  print*, p ! 3.00000000
  print*, "since p=q means p is the same pointer of q, and 3.0"

  p = 4.0

  print*,
  print*, "p=4.0, then p and x are"
  print*, p ! 4.00000000
  print*, x ! 4.00000000
  print*, "p=4.0 means p points 4.0, and x=4.0."

  p => q

  print*
  print*, "finally, p=>q, then p and x are"
  print*, p ! 3.00000000    
  print*, x ! 4.00000000
  print*, "p=>q means that p points q, i.e., 3.0, but x remains 4.0."
end program main
