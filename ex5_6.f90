! ex5_6.j90
! primes upto 100
! trial division
PROGRAM Prime100
  Integer :: m, n, max=100
  Print*, 2

xxx: Do n = 3, max, 2
       Do m = 3, Nint(Sqrt(Real(n))), 2
         If(Mod(n,m)==0) Cycle xxx
       End Do
         Print*, n
     End Do xxx

END PROGRAM Prime100
