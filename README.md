# FortranProgramming

Fortran Programming  
From:  
  http://ace.phys.h.kyoto-u.ac.jp/~tomita/education/fortran90/sec1.html#sec1

  http://d.hatena.ne.jp/arakik10/20100203/

  http://jjoo.sakura.ne.jp/tips/f90/index.html

  http://web.agr.ehime-u.ac.jp/~kishou/Lecture/atmosphere/atmo06.htm

# Format
## fixed.for

    1234567~72  
          +-+- body  
         +---- for line continuation symbol  
     +---+---- put any symbol to indicate for line continuation  
    +---+----- line numbers  
    +--------- C or * for comment  
    1234567~72  
    
## free.f90

    1~132  
    ; for new line (in the same line)  
    ! comment  
  
    conti& ! for line continuation, put & at last  
    nue   

## names.f90
    
    number of letters <= 31

## coding_style.f90
    
    http://www.mri-jma.go.jp/Project/mrinpd/coderule.html
    
    Especially, put "implicit none" statement top level.
    If the program has "use", then put just before this.

## IO
### PRINT
#### From ex5_3.f90
    print *, "string"
          +- default setting
    print "(1X, I3, 2X, 3F10.5)", ..      
                        +- 10 letters for each 3 floating numbers with 10^(-5) accuracy
                    +----- 2 spaces
                +--------- 3 letters for integers 
            +------------- 1 space at the top

#### From ex5_4.f90
    print "(A,$)"
              +- no new line
            +--- charactors with its length. (If we put number, e.q., A3 means 3 letter-width.)


### WRITE
    OPEN(8, FILE="file_name.out")
                  +- a string as a file name
         +---------- (5,6) for standard console (In, Out)
    WRITE(8) contents
             +------ some data
    CLOSE(8)

    WRITE(*,*) is the same as PRINT*

#### From ex8_10
    WRITE(*, '(A)', ADVANCE='no') "Case? "
                    +- No new line
             +-------- Character variable:
          +----------- Standard IO (console)   
    
### READ

### Redirection

$ cat redirect_12.f90 

```fortran
! redirect.f90
program main
  implicit none
  integer :: i,j,k,l

  read(*,*) i
  read(*,*) j,k
  read(*,*) l

  write(*,*) "i=",i, "j=",j, "k=",k, "l=",l
end program main
```

$ cat data.txt 
1, 2
3
4, 5
6, 7
$ ./a.out < data.txt 
 i=           1 j=           3 k=           4 l=           6

$ ./a.out < data.txt > out.txt
$ cat out.txt 
 i=           1 j=           3 k=           4 l=           6

# Note
## Division (/)

Use 
  (/) :: REAL -> REAL -> REAL
E.g.,
  1.5 * 4.0 / 3.0 (NG : 1.5 * 4 / 3)  
