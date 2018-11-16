PROGRAM prog09

        IMPLICIT NONE

        INTEGER :: Smallest, Largest, Addition, N, K, I
        REAL :: RAverage, RAddition, RN

        PRINT*, 'How many total number values are you providing?'
        READ*, N

        PRINT*, 'Enter an integer number value.'
        READ*, Smallest
        Largest = Smallest 
        Addition = Smallest
        
        DO I = 1, N-1
           PRINT*, 'Enter an integer number value.'
           READ*, K
        
           IF (K < Smallest) THEN
                  Smallest = K
           END IF
           
           Addition = Addition + K

           IF (K > Largest) THEN
                   Largest = K
           END IF
        END DO
 
        RAddition = Real(Addition)
        PRINT*, Addition," ", RAddition
        RN = Real(N)
        PRINT*, RN
        RAverage = (RAddition)/RN
       

        PRINT*, Largest, 'is the largest number.'
        PRINT*, Smallest, 'is the smallest number.'
        PRINT*, RAverage, 'is the average of the numbers.'

END PROGRAM prog09
