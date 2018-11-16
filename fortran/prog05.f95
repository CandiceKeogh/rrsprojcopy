! Candice Keogh
! Section 001-Written November 5, 2018
! This program reads an automobile speed (integer) and displays a mesage indicating whether or not the vehicle is speeding.

PROGRAM prog05

        IMPLICIT NONE
        INTEGER :: AutoSpeed

        PRINT*, 'Enter an integer value of automobile speeds.'
        READ*, AutoSpeed

        IF (AutoSpeed > 55) THEN
                PRINT*, ' With a speed of', AutoSpeed, 'this vehicle is speeding.'
        END IF

        IF (Autospeed <= 55) THEN
                PRINT*, 'With a speed of', AutoSpeed, 'this vehicle is not speeding.'
        END IF
        
END PROGRAM prog05
