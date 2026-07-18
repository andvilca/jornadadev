FUNCTION MAIN()

    LOCAL nI := 0
    LOCAL nSoma := 0

    FOR nI := 10 TO 1 STEP -1
        QOut(AllTrim(Str(nI)))
    NEXT 

    FOR nI := 2 TO 100 STEP  2
        nSoma += nI
    NEXT 


RETURN NIL