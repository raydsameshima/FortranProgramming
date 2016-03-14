! ex3_1.f90
! This is a bad example, we can eliminate GOTO by DO...EXIT.
PROGRAM Grading
    INTEGER :: n, s, k
    s = 0; k = 0
10  PRINT*, "Input mark for each student (or negative one to quit):"
    READ*, n; IF(n < 0) GOTO 999
    s = s + 1
    IF(n >= 60) k = k + 1
    GOTO 10
999 PRINT*, k, " students passed in this exam. Total # of student =", s

END PROGRAM Grading
