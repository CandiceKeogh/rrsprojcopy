!Candice Keogh
!Written November 14, 2018

PROGRAM rrsproj

        IMPLICIT NONE

        CHARACTER :: OPT*1

        DO 
        CALL SYSTEM ('clear')
        WRITE(*,*) '                                  ***Police Database***             '
        WRITE(*,*)
        WRITE(*,*) '                              1 - Initial Data Load             '
        WRITE(*,*) 
        WRITE(*,*) '                              2 - Display Auxiliary Files       '
        WRITE(*,*)
        WRITE(*,*) '                              3 - Display a Record (by SSN)     '
        WRITE(*,*) 
        WRITE(*,*) '                              4 - Add a Record                  '
        WRITE(*,*)
        WRITE(*,*) '                              5 - Delete a Record               '
        WRITE(*,*)
        WRITE(*,*) '                              6 - Modify a Record               '
        WRITE(*,*) 
        WRITE(*,*) '                              7 - List Master File              '
        WRITE(*,*) 
        WRITE(*,*) '                              8 - Exit                          '
        WRITE(*,*)

        WRITE(*, 110, ADVANCE = 'NO')
110     FORMAT(///, T20, 'Select an option:')
        READ(*, 90) OPT
90      FORMAT(A1)
        Class: SELECT CASE (OPT)
                CASE ('1')
                        CALL opt1
                CASE ('2')
                        CALL opt2 
                CASE ('3')
                        CALL opt3
                CASE ('4')
                        CALL opt4 
                CASE ('5')
                        CALL opt5 
                CASE ('6')
                        CALL opt6
                CASE ('7')
                        CALL opt7 
                CASE ('8', 'E', 'e', 'Q', 'q')
                       EXIT
                CASE DEFAULT 
                       WRITE(*,'(/T18,A1)') 'Invalid option selected', OPT
                       WRITE(*,'(/T18,A)') 
                       WRITE(*,'(/T18,A)', ADVANCE = 'NO') 'Press ENTER to continue.'
                       WRITE(*,'(/T18,A)')
                       READ*, 
               END SELECT Class
        END DO

        END PROGRAM rrsproj
