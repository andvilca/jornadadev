FUNCTION MAIN()

    LOCAL nSalario := 0, nReajustado := 0

    INPUT "Digite seu salário: " TO nSalario

    IF nSalario < 1000 
        nReajustado := nSalario * 1.15
    ELSEIF nSalario < 2000 
        nReajustado := nSalario * 1.12
    ELSEIF nSalario < 4000 
        nReajustado := nSalario * 1.08
    ELSE
        nReajustado := nSalario * 1.05
    ENDIF 

    QOut("O salário reajustado é R$ " + AllTrim(Str(nReajustado, 10 , 2)))

RETURN NIL