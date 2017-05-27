! ex3_5.f90
! grading
PROGRAM Grade
  Integer :: i, n1, n2, n3, n4
  n1=0; n2=0; n3=0; n4=0

! If the read is outside, goto 9
1 Read *, i; If(i<0 .OR. i>100) Goto 9

  Select Case(i)
    Case(80:)
      Print*, "A"; n1 = n1+1
    Case(70:79)
      Print*, "B"; n2 = n2+1
    Case(60:69)
      Print*, "C"; n3 = n3+1
    Case Default
      Print*, "F"; n4 = n4+1
  End Select

  Goto 1
  
9 Print *, "A= ", n1, ", B= ", n2, ", C= ", n3, ", F= ", n4
END PROGRAM Grade

! $ ./ex3_5.out 
! 40
!  F
! 50
!  F
! 60
!  C
! 70
!  B
! 80
!  A
! 90
!  A
! 100
!  A
! -1
!  A=            3 , B=            1 , C=            1 , F=            2
