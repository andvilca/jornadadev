FUNCTION MAIN()

    LOCAL nNumero := 0

    WHILE .T.
        INPUT "Digite o número: " TO nNumero

        IF nNumero <= 0 
            EXIT 
        end if 
        
        QOut("O dobro do número é: " + AllTrim(Str(nNumero * 2, 10, 0)))
    end while

RETURN NIL