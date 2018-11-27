!Candice Keogh
!Written November 21, 2018

SUBROUTINE LDCOUNTY

        IMPLICIT NONE
        INTEGER :: CODE, ERRORCTR, CTR, FS
        CHARACTER :: DATA*12

        OPEN(12, FILE = 'county.data')
        OPEN(13, FILE = 'county.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL = 12)
        CTR = 0
        ERRORCTR = 0

        DO
        READ(12, 500, IOSTAT = FS) CODE, DATA
500     FORMAT(I2, A12)
        
        IF (FS /= 0) EXIT
        WRITE(13, 600, REC = CODE + 1)  DATA
600     FORMAT(A12)
        
        CTR = CTR + 2
        
        IF (CODE>71) THEN
                ERRORCTR = ERRORCTR + 1
        END IF
        END DO

        CLOSE(12)
        
        WRITE(13, 700, REC = 1) CTR
700     FORMAT (I4)
        
        CLOSE(13) 

        WRITE(*,800)CTR
800     FORMAT('Number of Counties Written:',I4)
        
        WRITE(*, 810)ERRORCTR
810     FORMAT('Faulty Data Record:' I4)

END SUBROUTINE LDCOUNTY
