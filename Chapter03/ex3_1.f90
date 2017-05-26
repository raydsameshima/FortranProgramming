! ex3_1.f90
! This is a bad example, we can eliminate GOTO by DO...EXIT.
! See Chapter05
PROGRAM Grading
    INTEGER :: n, s, k
    s = 0; k = 0
10  PRINT*, "Input mark for each student &
            (or negative one (-1) to quit):"
    READ*, n; IF(n < 0) GOTO 999
    s = s + 1
    IF(n >= 60) k = k + 1
    GOTO 10
999 PRINT *, k, " students passed in this exam." 
    Print *, "Total # of student =", s

END PROGRAM Grading

! $ ./ex3_1.out 
!  Input mark for each student (or negative one (-1) to quit):
! 40
!  Input mark for each student (or negative one (-1) to quit):
! 50
!  Input mark for each student (or negative one (-1) to quit):
! 60
!  Input mark for each student (or negative one (-1) to quit):
! 70
!  Input mark for each student (or negative one (-1) to quit):
! 80
!  Input mark for each student (or negative one (-1) to quit):
! 90
!  Input mark for each student (or negative one (-1) to quit):
! -1
!            4  students passed in this exam.
!  Total # of student =           6
