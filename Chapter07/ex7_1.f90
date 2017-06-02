! ex7_1.f90
! hexdecimal notion for positive integers
PROGRAM ex7_1
  CHARACTER (LEN=1) :: h(0:15) &
    = (/ '0','1','2','3','4','5','6','7',&
         '8','9','A','B','C','D','E','F' /)
  CHARACTER (LEN=8) :: hex
  INTEGER :: dec

ext:DO
  hex = " "
  PRINT *, "Input a positive integer, or 0 to stop:"
  READ *, dec
  IF (dec<=0) EXIT ext

  hxd:DO i=0, 7
! The right most element is the mod (positive remainder).
    hex(8-i : 8-i) = h(MOD(dec,16))
    dec = dec/16 ! rounded off
    IF (dec==0) EXIT hxd
  END DO hxd

  PRINT *, hex
END DO ext

END PROGRAM
