FUNCTION MAIN()

    LOCAL nTotal := 0
    LOCAL nI := 1, nNum, nQtd

    ACCEPT "Quantos números? " TO nQtd
    nQtd := Val(nQtd)

    WHILE nI <= nQtd
        ACCEPT "Número " TO nNum
        nTotal += Val(nNum)
        nI++
    END WHILE

    QOut("Soma: " + Alltrim(Str(nTotal)))

RETURN NIL