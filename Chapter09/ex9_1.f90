! ex9_1.f90
! Scalar and vector products of two 3-vectors.
PROGRAM main
  TYPE vector
    REAL :: x,y,z
  END TYPE vector
  TYPE(vector) :: a,b,c
  REAL :: s

  PRINT*, "Input 3 components of the first vector:"
  READ*, a
  PRINT*, "Input 3 components of the second vector:"
  READ*, b
  PRINT*, "To access each component, use a%x."
  PRINT '(A, F6.3)', " a%x = ", a%x
  s = a%x * b%x + a%y * b%y + a%z * b%z
  PRINT "(' a.b = ', F6.3 )", s
  c = vector_product(a,b)
  PRINT "( ' a^b = ', F6.3, ',', F6.3, ',', F6.3 )", c

CONTAINS
  FUNCTION vector_product(u,v) RESULT(w)
    TYPE(vector) :: u,v,w
    w%x = u%y * v%z - u%z * v%y
    w%y = u%z * v%x - u%x * v%z
    w%z = u%x * v%y - u%y * v%x
  END FUNCTION vector_product
END PROGRAM main
