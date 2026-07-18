FUNCTION MAIN()

    LOCAL nNota := 0, cInput := 0
    
    WHILE .T.
        ACCEPT "Nota (0 a 10): " TO cInput
        nNota := Val(cInput)
        If nNota >= 0 .AND. nNota <= 10
            EXIT 
        ENDIF 
        QOut("NOta inválida! Tente de novo.")
    END WHILE 

RETURN NIL