FUNCTION MAIN()

    LOCAL nNumero := 0, nTotal := 0, nQuantidade := 0

    WHILE .T.

        INPUT "Digite o número: " TO nNumero

        IF nNumero == 0
            EXIT 
        ENDIF 
        
        nTotal += nNumero
        nQuantidade++
    
    END WHILE

    QOut("Soma total dos valores: " + Alltrim(Str(nTotal, 10, 2)))
    QOut("Quantidade de valores somados: " + Alltrim(Str(nQuantidade, 10, 0)))

RETURN NIL 