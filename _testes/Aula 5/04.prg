FUNCTION MAIN()

    LOCAL nI := 1, nNum
    ACCEPT "Tabuada de qual número? " TO nNum
    nNum := Val(nNum)

    FOR nI := 1 TO 10
        QOut(Alltrim(Str(nNum)) + " x " + Alltrim(Str(nI)) + " = " + Alltrim(Str(nNum * nI)))
    END FOR

RETURN NIL