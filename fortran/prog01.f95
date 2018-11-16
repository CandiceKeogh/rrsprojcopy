! Candice Keogh
! Section 001-Written November 4, 2018
! This program converts temperatures in degrees Fahrenheit to degrees Celsius.

  PROGRAM prog01

          IMPLICIT NONE
          INTEGER :: Fahrenheit
          REAL :: Ffahrenheit, Celsius

          PRINT*, 'Enter a temperature value in degrees Fahrenheit.'
          READ*, Fahrenheit

          Ffahrenheit = Fahrenheit
          Celsius = 5.0/9.0 * (Ffahrenheit-32.0)

          PRINT*, Ffahrenheit, 'degrees Fahrenheit is' ,Celsius, 'degrees Celsius.'

  END PROGRAM prog01
