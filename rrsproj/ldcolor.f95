!Candice Keogh
!Written November 21, 2018

SUBROUTINE LDCOLOR

        IMPLICIT NONE
        INTEGER :: CODE, CTR, ERRORCTR, FS
        CHARACTER :: ABBR*3, DATA*22

        OPEN(18, FILE = 'color.data')
        OPEN(19, FILE = 'color.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL = 25)
        CTR = 0
        ERRORCTR = 0

        DO
           READ(18, 1700, IOSTAT = FS) CODE, ABBR, DATA
1700       FORMAT(I2, A3, A22)
        
        IF (FS /= 0) EXIT
           WRITE(19, 1800, REC = CODE + 1) ABBR, DATA
1800       FORMAT(A3, A22)

           CTR = CTR +1
                
           IF (CODE>31) THEN
                ERRORCTR=ERRORCTR + 1
                WRITE(*,*) 'Invalid Record(s) Found:'
                WRITE(*, '(I2, A3, A22)') CODE, ABBR, DATA
        END IF
           END DO

        CLOSE(18)
        
        WRITE(19, 1900, REC = 1) CTR
1900    FORMAT (I4)
        
        CLOSE(19)

        WRITE(*,2000)CTR
2000    FORMAT('Number of Colors of Cars Written:',I4)

        WRITE(*, 2010) ERRORCTR
2010    FORMAT('Faulty Colors Written:' I4)
        
        END SUBROUTINE LDCOLOR
