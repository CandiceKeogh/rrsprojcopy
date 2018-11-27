!Candice Keogh
!Written November 14, 2018
SUBROUTINE opt1

        IMPLICIT NONE

        CALL SYSTEM ('clear')
        CALL LDSTATE
        CALL LDCOUNTY
        CALL LDVMAKE
        CALL LDVTYPE
        CALL LDCOLOR
        WRITE(*,*) '1 - Initial Data Load'
        WRITE(*,*)
        WRITE(*,*) 'Press ENTER to continue...'
        READ*, 

END SUBROUTINE opt1

