! ex5_5.f90
! gcd
PROGRAM Gcd
  Integer :: m, n, k

  Print *, "Input two integers m,n (>0): "
  Read *, m, n
  If(m > 0 .AND. n > 0) Then
    Do
      k = Mod(m,n)
        If(k==0) Exit
      m = n
      n = k
    END Do

    If(n > 1) Then
      Print*, "GCD = ", n
    Else
      Print*, "NOTHING"
    END If
  END If
END PROGRAM Gcd
