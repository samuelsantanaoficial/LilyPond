\version "2.24.4"

% Tabela personalizada
#(define myDrumStyleTable
   (alist->hash-table
    '(
       (chinesecymbal cross #f 7)
       (crashcymbal cross #f 6)
       (closedhihat cross stopped 5)
       (openhihat cross open 5)
       (hihat cross #f 5)
       (ridecymbal cross #f 4)
       (ridebell cross #f 4) ;diamond
       (hightom () #f 4)
       (himidtom () #f 3)
       (cowbell triangle #f 3)
       (ridecymbala cross #f 2)
       (lowmidtom () #f 2)
       (sidestick cross #f 1)
       (snare () #f 1)
       (lowtom () #f 0)
       (highfloortom () #f -1)
       (lowfloortom () #f -2)
       (bassdrum () #f -3)
       (acousticbassdrum () #f -4)
       (pedalhihat cross #f -5)
       )
    )
   )