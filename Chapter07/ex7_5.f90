! ex7_5.f90
! counting alphabet
PROGRAM alphabet_counting
! CHARACTER :: abc*53, input*80
  CHARACTER(LEN=53) :: abc
  CHARACTER(LEN=80) :: input
  INTEGER :: freq(0:27)=0, code(255)=0, i, ichi
  LOGICAL :: mask(0:27)
  abc=" ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
!      1 here is a space  
  DO ichi=1, 53
    IF(ichi <= 27) THEN
      code(ICHAR(abc(ichi:ichi)))=ichi    ! capital letters
    ELSE
      code(ICHAR(abc(ichi:ichi)))=ichi-26 ! small leters
    END IF  
  END DO

  DO
    PRINT *, "Write a sentence shorter than 80 characters:"
    READ '(A)', input
    IF(input == "") EXIT
    DO i=1, LEN_TRIM(input)
      ichi = code(ICHAR(input(i:i)))
      freq(ichi) = freq(ichi) + 1
    END DO
  END DO

  freq(0)=0
  mask = (freq>0)

  DO WHILE(COUNT(mask)>0)
    ichi = SUM(MAXLOC(freq, mask)) - 1
!              1 MAXLOC returns a one-element array
    PRINT '(4X, A1, ":" I5)', abc(ichi:ichi), freq(ichi)
    mask(ichi) = .FALSE. 
  END DO

  PRINT '("Total=", I5)', SUM(freq)

END PROGRAM alphabet_counting
!
! MAXLOC returns 1 component vector even if it takes 1d array.
! To convert it to scalar, use SUM.
! The return value is the relative index (1,2,3 ..) from the head.
! E.g.,
!   a(0:3) = /(1,4,3,0)/
!   MAXLOC(a) = (/2/)
!     => a(SUM(MAXLOC(a))) = a(2) = 3
!
