! ex9_2.f90
! grading
PROGRAM main
  IMPLICIT NONE
  TYPE grade_components
    INTEGER           :: number
    CHARACTER(LEN=12) :: name
    INTEGER           :: mark(1:5)
  END TYPE grade_components
  INTEGER :: n,i
  CHARACTER(LEN=1) :: answer
  TYPE(grade_components) :: s5

  PRINT*, "How many students?"
  READ*, n
  OPEN(8, FILE = "h3.txt")
    DO WHILE (i<n)
      PRINT*, "Student's name:"
      READ "(A)", s5%name
      PRINT*, "Grades of 5 (core) courses:"
      READ *, s5%mark(:)
      PRINT "(A12, 5I4)", s5%name, s5%mark(:)
      PRINT*, "confirm (Empty or N)"
      READ "(A)", answer
      IF( answer == " ") THEN
        i = i + 1
        s5%number = i
        WRITE(8, '(I5, 1X, A12, 5I4)' ) s5
      END IF
    END DO
  CLOSE(8)
END PROGRAM main
! 
! $ ./ex9_2.out 
!  How many students?
! 3
!  Student's name:
! andy
!  Grades of 5 (core) courses:
! 10
! 9
! 8
! 7
! 6
! andy          10   9   8   7   6
!  confirm (Empty or N)
! 
!  Student's name:
! bill
!  Grades of 5 (core) courses:
! 8
! 8
! 8
! 8
! 8
! bill           8   8   8   8   8
!  confirm (Empty or N)
! 
!  Student's name:
! charly
!  Grades of 5 (core) courses:
! 6
! 7
! 8
! 7
! 8
! charly         6   7   8   7   8
!  confirm (Empty or N)
!  
! rds:Chapter09 rds$ cat h3.txt 
!     1 andy          10   9   8   7   6
!     2 bill           8   8   8   8   8
!     3 charly         6   7   8   7   8
