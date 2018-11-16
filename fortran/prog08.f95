! Candice Keogh
! Section 001- Written November 5, 2018
! This program reads the number of credit hours completed by a university student and classifies the student as either a freshman,
! sophomore, junior, or senior. 

PROGRAM prog08

        IMPLICIT NONE

        INTEGER :: Hours

        WRITE(*,*) 'Enter an integer value for the completed university credit hours.'
        READ(*,*) Hours

Class: SELECT CASE (Hours)
        CASE (0:31)
                WRITE(*,*) 'With', Hours, 'credit hours, this student is a Freshman.'
        CASE (32:63) 
                WRITE(*,*) 'With', Hours, 'credit hours, this student is a Sophomore.'
        CASE (64:95)
               WRITE(*,*) 'With', Hours, 'credit hours, this student is a Junior.'
        CASE (96:)
               WRITE(*,*) 'With', Hours, 'credit hours, this student is a Senior.'
        CASE DEFAULT
                WRITE(*,*) 'Not Classifiable.'
        END SELECT Class

END PROGRAM prog08

