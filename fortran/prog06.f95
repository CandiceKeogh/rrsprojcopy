! Candice Keogh
! Section 001- Written November 5, 2018
! This program reads a character values and a real number and will display certain information based on what is read as either an
! 'S', 's', 'T' or 't'.

PROGRAM prog06

        IMPLICIT NONE

        CHARACTER :: X
        REAL :: Y

      PRINT*, 'Enter the character ''s'' or ''t'' and a real number value separated by a space.'
      READ*, X, Y

      IF (X == 'S' .OR. X == 's') THEN
              PRINT*, 'Send money! I need $', Y
      END IF

      IF (X == 'T' .OR. X == 't') THEN
              PRINT*, 'The temperature last night was', Y, ' degrees.'
      END IF
      END PROGRAM prog06


        
