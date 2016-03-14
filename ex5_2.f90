! ex5_2.f90
! KUKU, a multiplication table
PROGRAM Kuku
  Integer :: m, n, mn

var1: Do m = 2,9
var2:   Do n = 1,9
          Print *, m, " times ", n, " ? Write your answer:"
          Read *, mn
          If(mn == m*n) Then
            Print *, "ok"
          Else
            Print *, "wrong"
          END If
        END DO var2
      END DO var1

END PROGRAM Kuku
