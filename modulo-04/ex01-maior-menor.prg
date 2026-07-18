FUNCTION MAIN()

    LOCAL nA := 0, nB := 0

    INPUT "Digite o primeiro número: " TO nA
    INPUT "Digite o segundo número: " TO nB

    IF nA == nB
        QOut("Os dois números são iguais.")
    ELSEIF nA > nB
        QOut("O número " + Alltrim(Str(nA, 10, 2)) + "é o maior.")
        QOut("O número " + Alltrim(Str(nB, 10, 2)) + "é o menor.")
    ELSE 
        QOut("O número " + Alltrim(Str(nB, 10, 2)) + "é o maior.")
        QOut("O número " + Alltrim(Str(nA, 10, 2)) + "é o menor.")
    ENDIF 
    

RETURN NIL