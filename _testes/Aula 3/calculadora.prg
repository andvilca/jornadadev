FUNCTION MAIN()

    LOCAL nA 
    LOCAL nB 

    Accept "Insira o primeiro número: " TO nA
    Accept "Insira o segundo número: " TO nB
    
    nA := Val(nA)
    nB := Val(nB)

    QOut("Soma: " + AllTrim(Str(nA + nB, 10, 2)))
    QOut("Subtração: " + AllTrim(Str(nA-nB, 10, 2)))
    QOut("Produto: " + AllTrim(Str(nA * nB, 10, 2)))
    if (nB <> 0)
        QOut("Divisão: " + Alltrim(Str(nA / nB, 10, 2)))
    else 
        QOut("Não existe divisão.")
    Endif 

RETURN NIL

