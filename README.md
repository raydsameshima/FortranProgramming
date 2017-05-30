# FortranProgramming

Fortran Programming  
From:  
  http://ace.phys.h.kyoto-u.ac.jp/~tomita/education/fortran90/sec1.html#sec1

  http://d.hatena.ne.jp/arakik10/20100203/

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

## print option

### From ex5_3.f90
    print *, "string"
          +- default setting
    print "(1X, I3, 2X, 3F10.5)", ..      
                        +- 10 letters for each 3 floating numbers with 10^(-5) accuracy
                    +----- 2 spaces
                +--------- 3 letters for integers 
            +------------- 1 space at the top

### From ex5_4.f90
    print "(A,$)"
              +- no new line
            +--- charactors with its length. (If we put number, e.q., A3 means 3 letter-width.)

