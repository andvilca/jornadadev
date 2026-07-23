FUNCTION MAIN()

    LOCAL aProduto := {}, nN := 1, nI := 0, nTotal := 0, cContinue := "S" 

    DO WHILE cContinue == "S"

        AAdd(aProduto, Array(2))

        Accept "Digite o nome do " + AllTrim(Str(nN)) + " produto: " TO aProduto[nN, 1]
        INPUT "Digite o preço do " + AllTrim(Str(nN)) + " produto: " TO aProduto[nN, 2]

        ACCEPT "Adicionar mais um item? [S/N] " TO cContinue
        cContinue := Upper(AllTrim(cContinue))

        nN++
    END WHILE

    FOR nI := 1 TO nN-1

        nTotal += aProduto[nI, 2]
        QOut("Produto " + aProduto[nI, 1] + ": R$ " + AllTrim(Str(aProduto[nI, 2], 10, 2)))

    END FOR

    QOut("Total: R$ " + AllTrim(Str(nTotal, 10, 2)))

RETURN NIL