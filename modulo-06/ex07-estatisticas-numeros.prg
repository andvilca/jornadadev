FUNCTION MAIN()

    LOCAL aNum[10], nI := 0, nSoma := 0

    FOR nI := 1 TO 10
        INPUT "Digite o " + AllTrim(Str(nI)) + " número: " TO aNum[nI]
    END FOR

    ASort(aNum)

    FOR nI := 1 TO 10
        QOut(AllTrim(Str(nI)) + " número " + Alltrim(Str(aNum[nI])))
        nSoma += aNum[nI]
    END FOR

    QOut("Soma: " + Alltrim(Str(nSoma)))
    QOut("Média: " + ALltrim(Str(nSoma/10)))
    QOut("Menor número: " + Alltrim(Str(aNum[1])))
    QOut("Maior número: " + Alltrim(Str(aNum[10])))

RETURN NIL