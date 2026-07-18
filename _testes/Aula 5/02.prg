FUNCTION MAIN()

    LOCAL nCont := 1

    WHILE nCont <= 5
        QOut("Contagem: " + Alltrim(Str(nCont)))
        nCont++
    END WHILE

RETURN NIL