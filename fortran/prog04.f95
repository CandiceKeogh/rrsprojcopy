! Candice Keogh!
! Section 001-Written November 4, 2018
! This program reads a rental car's miles per gallon values and tank size in gallons and prints out the distance that can be
! traveled on one tank.

PROGRAM prog04

        IMPLICIT NONE

        REAL :: MPG, Capacity, Distance

        PRINT*, 'Enter values of miles per gallon and tank size in gallons.'
        READ*, MPG, Capacity

        Distance = MPG * Capacity

        PRINT*, Distance, 'Miles is the product of', MPG, 'Miles Per Gallon and', &
                & Capacity, 'Tank Size in Gallons.'
        
END PROGRAM prog04
