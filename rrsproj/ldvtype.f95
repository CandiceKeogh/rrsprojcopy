!Candice Keogh
!Written November 21, 2018

SUBROUTINE LDVTYPE

        IMPLICIT NONE
        INTEGER :: CODE, CTR, ERRORCTR, FS
        CHARACTER :: DATA*15

        OPEN(14, FILE = 'vtype.data')
        OPEN(15, FILE = 'vtype.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL = 15)
        CTR = 0
        ERRORCTR = 0

        DO
        READ(14, 900, IOSTAT = FS) CODE, DATA
900     FORMAT(I2, A15)
        
        IF (FS /= 0) EXIT

        WRITE(15, 1000, REC = CODE + 1)  DATA
1000    FORMAT(A15)

        CTR = CTR +1
        
        IF (CODE>15) THEN
                ERRORCTR=ERRORCTR +1
                WRITE(*,*) 'Invalid Record(s) Found:'
                WRITE(*, '(I2, A15)') CODE, DATA
        END IF
                END DO

        CLOSE(14)

        WRITE(15, 1100, REC = 1) CTR
1100    FORMAT (I4)

        CLOSE (15)

        WRITE(*,1200)CTR
1200    FORMAT('Number of Types of Vehicles Written:',I4)

        WRITE(*,1210)ERRORCTR
1210    FORMAT('Faulty data record:' I4)

        END SUBROUTINE LDVTYPE
