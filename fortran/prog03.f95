! Candice Keogh
! Section 001-Written November 4, 2018
! This program reads the weight of an object in pounds and computes and prints its weight in kilograms and grams.

PROGRAM prog03

        IMPLICIT NONE

        REAL :: Kilograms, Grams, Pounds

        PRINT*, 'Enter a weight value in pounds.'
        READ*, Pounds

        Kilograms = 0.453592 * Pounds
        Grams = 453.59237 * Pounds

        PRINT*, Pounds, 'pounds are equal to', Kilograms, 'kilograms'
        PRINT*, Pounds, 'pounds are equal to', Grams, 'grams'

END PROGRAM prog03
