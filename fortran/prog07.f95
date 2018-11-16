! Candice Keogh
! Section 001- Written November 5, 2018
! This is a program that reads in three numbers and finds and displays the smallest and largest numbers.

PROGRAM prog07

        IMPLICIT NONE

        REAL :: X,Y,Z, Smallest, Largest

        PRINT*, 'Enter first number value.'
        READ*, X

        Smallest =  X
        Largest = X

        PRINT*, 'Enter second number value.'
        READ*, Y

        IF (Y < X) Smallest = Y
        IF (Y > X) Largest = Y

        PRINT*, 'Enter third number value.'
        READ*, Z

        IF (Z < X .AND. Z < Y) THEN
                Smallest = Z
        END IF

        IF (Z > X .AND. Z > Y) THEN
                Largest = Z
        END IF

        PRINT*, Smallest, 'is the smallest number.'
        PRINT*, Largest, 'is the largest number.'

        END PROGRAM prog07
