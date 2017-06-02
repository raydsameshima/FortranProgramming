! ex7_5.f90
! counting alphabet
PROGRAM alphabet_counting
  CHARACTER :: abc*53, input*80
  INTEGER :: freq(0:27)=0, code(255)=0, i, ichi
  LOGICAL :: mask(0:27)
  abc=" ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  
  DO ichi=1, 53
    IF(ichi <= 27) THEN
      code(ICHAR(abc(ichi:ichi)))=ichi
    ELSE
      code(ICHAR(abc(ichi:ichi)))=ichi-26
    END IF  
  END DO

  DO
    PRINT *, "Write a sentence shorter than 80 characters:"
    READ '(A)', input
    IF(input == "") EXIT
    DO i=1, LEN_TRIM(input)
      ichi = code(ICHAR(input(i:i)))
      freq(ichi)=freq(ichi)+1
    END DO
  END DO

  freq(0)=0
  mask = (freq>0)

  DO WHILE(COUNT(mask)>0)
    ichi = SUM(MAXLOC(freq, mask))-1
    PRINT '(4X, A1, ":" I5)', abc(ichi:ichi), freq(ichi)
    mask(ichi) = .FALSE. 
  END DO

  PRINT '("Total=", I5)', SUM(freq)

END PROGRAM alphabet_counting
