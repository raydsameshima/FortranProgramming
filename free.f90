! free.f90
! --- Free Coding Format
PROGRAM Factorial
    INTEGER :: I, f=1  ! Initializing as f=1
    DO i = 1, 10
       f = f * i ; PRINT *, i, "! =", f
    END DO
END PROGRAM Factorial
