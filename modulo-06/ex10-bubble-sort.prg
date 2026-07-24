FUNCTION MAIN()

    LOCAL aVetor := Array(10)

    PreencherVetor(aVetor)
    QOut("Sem ordenar: ")
    ImprimirVetor(aVetor)
    BubbleSort(aVetor)
    QOut("Após ordenar: ")
    ImprimirVetor(aVetor)

RETURN NIL

FUNCTION PreencherVetor(aVetor)
    
    LOCAL nI := 0

    FOR nI := 1 TO Len(aVetor)
        aVetor[nI] := HB_RandomInt(1,100)
    END FOR

RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL nI := 0, nJ := 0, nTemp := 0

    FOR nI := 1 TO Len(aVetor)-1
        FOR nJ := 1 TO Len(aVetor)-nI
            IF aVetor[nJ] > aVetor[nJ +1]
                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ +1]
                aVetor[nJ + 1] := nTemp
            END IF
        END FOR
    END FOR

RETURN NIL

FUNCTION ImprimirVetor(aVetor)

    LOCAL nI := 0

    FOR nI := 1 TO Len(aVetor)
        QQOut(Alltrim(Str(aVetor[nI])) + " ")
    END FOR

    QOut("")

RETURN NIL