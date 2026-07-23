FUNCTION MAIN()

    LOCAL aDias := {"Dom", "Seg", "Ter", "Qua", "Quin", "Sex", "Sab"}
    LOCAL aQualquerCoisa := {}
    LOCAL nI := 0

    FOR nI := 1 TO 2000
       aAdd(aQualquerCoisa, hb_RandomInt(1, 2000))
       QOut(Str(nI) + ". " + Str(aQualquerCoisa[nI]))
    NEXT 

    QOut(aDias[1])
    aDias[7] := "Sábado"

    FOR nI := 1 TO Len(aDias)
        QOut(Str(nI) + ". " + aDias[nI])
    NEXT

RETURN NIL