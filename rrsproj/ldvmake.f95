!Candice Keogh
!Written November 21, 2018

SUBROUTINE LDVMAKE

        IMPLICIT NONE
        INTEGER :: CODE, CTR, ERRORCTR, FS
        CHARACTER :: DATA*11

        OPEN(16, FILE = 'vmake.data')
        OPEN(17, FILE = 'vmake.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL = 11)
        CTR = 0
        ERRORCTR = 0

        DO
        READ(16, 1300, IOSTAT = FS) CODE, DATA
1300    FORMAT(I2, A11)

        IF (FS /= 0) EXIT
        WRITE(17, 1400, REC = CODE + 1)  DATA
1400    FORMAT(A11)
        

        CTR = CTR +1
        
        IF (CODE>51) THEN
                ERRORCTR=ERRORCTR + 1
                WRITE(*,*) 'Invalid Record(s) Found:'
                WRITE(*, '(I2, A11)')CODE, DATA
        END IF
        END DO
        
        CLOSE(16)
        
        WRITE(17, 1500, REC = 1) CTR
1500    FORMAT (I4)
        
        CLOSE(11)

        WRITE(*,1600)CTR
1600    FORMAT('Number of Types of Car Makes Written:',I4)
       
         
        WRITE(*, 1700)ERRORCTR 
1700    FORMAT('Faulty data tally:' I4)

END SUBROUTINE LDVMAKE
