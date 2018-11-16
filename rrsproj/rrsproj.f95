PROGRAM rrsproj

        IMPLICIT NONE

        CHARACTER :: OPT

        DO 
        CALL SYSTEM ('clear')
        PRINT*, '1 - Initial Data Load'
        PRINT*, 
        PRINT*, '2 - Display Auxiliary Files'
        PRINT*,
        PRINT*, '3 - Display a Record (by SSN)'
        PRINT*, 
        PRINT*, '4 - Add a Record'
        PRINT*,
        PRINT*, '5 - Delete a Record'
        PRINT*,
        PRINT*, '6 - Modify a Record'
        PRINT*, 
        PRINT*, '7 - List Master File'
        PRINT*, 
        PRINT*, '8 - Exit'
        PRINT*,
        PRINT*, 'Select an option.'

        READ*, OPT
        SELECT CASE
                CASE ('1')
                        CALL (OPT1)
                CASE ('2')
                        CALL (OPT2)
                CASE ('3')
                        CALL (OPT3)
                CASE ('4')
                        CALL (OPT4)
                CASE ('5')
                        CALL (OPT5)
                CASE ('6')
                        CALL (OPT6)
                CASE ('7')
                        CALL (OPT7)
                CASE ('8')
                        EXIT
        END DO
