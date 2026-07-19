FUNCTION MAIN()

    LOCAL nI := 0 

    FOR nI := 1 TO 100
        QOut(Str(nI))
    NEXT 

    FOR nI := -50 TO 50
        QOut(Str(nI))
    NEXT 

    FOR nI := 80 TO 5 STEP -1
        QOut(Str(nI))
    NEXT 

RETURN NIL