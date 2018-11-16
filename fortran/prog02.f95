! Candice Keogh
! Section 001-Written November 4, 2018
! This program reads two data items and prints their sum, difference, product, and quotient

PROGRAM prog02

        IMPLICIT NONE

        INTEGER :: X,Y, Addition, Subtraction, Multiplication
        REAL :: Rx, Ry, Division

        PRINT*, 'Enter two integer values and separate them with commas.'
        READ*, X,Y

        Addition = X + Y
        Subtraction = X - Y
        Multiplication = X * Y
        Rx = X
        Ry = Y
        Division = Rx / Ry

        PRINT*, Addition, 'is the sum of two integer values.'
        PRINT*, Subtraction, 'is the difference between two integer values.' 
        PRINT*, Multiplication, 'is the product of two integer values.'
        PRINT*, Division, 'is the quotient of two real values.'

END PROGRAM prog02
        
