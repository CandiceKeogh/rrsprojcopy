! Candice Keogh
! Written November 26, 2018

SUBROUTINE DSTATE

        IMPLICIT NONE
        INTEGER, PARAMETER :: ColumnWidth=30, NumberInRow=17, NRECS, RowPos, Column, Colpos
        CHARACTER :: LINE(17)*100, DATA*22

        OPEN(8, FILE = 'ldstate.db', FORM = 'FORMATTED', ACCESS = 'DIRECT', RECL =  )

        DO I = 1, 17
                LINE(I) = ' '
        END DO

        RowPos = 1
        Column = 1

        DO I = 1, NRECS
                Colpos = (Column-1)*ColumnWidth
                READ(8, '(A22)', REC = I + 1) DATA
                LINE(RowPos)(Colpos + 4: Colpos + 5) = DATA(1:2)
                LINE(RowPos)(Colpos + 7: Colpos + 26) = DATA(3:22)
                WRITE(LINE(RowPos)(Colpos + 1 : Colpos + 2), 300) I
300             FORMAT(I2.2)

                RowPos = RowPos + 1
                IF(RowPos > NumberInRow) THEN
                        RowPos = 1
                        Column = Column + 1
                END IF

                DO I = 1, NumberInRow
                WRITE(*,200)LINE(I)
200             FORMAT(A100)
                END DO

        CLOSE(8)
