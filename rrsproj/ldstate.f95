!Candice Keogh
!Written November 19, 2018

SUBROUTINE LDSTATE

        IMPLICIT NONE
        INTEGER :: CODE, CTR, FS, ERRORCTR
        CHARACTER :: ABBR*2, DATA*20

        OPEN(10, FILE = 'state.data')
        OPEN(11, FILE = 'state.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL = 22)
        CTR = 0
        ERRORCTR = 0

        DO
        READ(10, 100, IOSTAT = FS) CODE, ABBR, DATA
100     FORMAT(I2, A2, A20)
        
        IF (FS /= 0) EXIT
        WRITE(11, 200, REC = CODE + 1) ABBR, DATA
200     FORMAT(A2, A20)
        
        CTR = CTR +1
        
        IF (CODE>51) THEN 
                ERRORCTR=ERRORCTR + 1
                WRITE(*,*) 'Invalid Record(s) Found:'
                WRITE(*,'(I2,A2,A20)')CODE, ABBR, DATA
        END IF
        END DO

        CLOSE(10)
        
        WRITE(11, 300, REC = 1) CTR
300     FORMAT(I4)
        
        CLOSE(11)
        
        WRITE(*,400)CTR
400     FORMAT('Number of States Written:',I4)
        
        WRITE(*,410)ERRORCTR
410     FORMAT('Faulty data tally:' I4)

END SUBROUTINE LDSTATE
