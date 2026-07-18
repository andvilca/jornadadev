FUNCTION MAIN()

    LOCAL nA := 0, nB := 0, cOperacao := ""

    INPUT "Digite o primeiro número: " TO nA
    INPUT "Digite o segundo número: " TO nB
    ACCEPT "Digite qual operação a ser realizada  +, -, *, /, ^ (Potência), R (Raiz): " TO cOperacao

    do case
        case cOperacao == "+"
            QOut("Resultado: " + AllTrim(Str(nA + nB, 10, 2)))
        
        case cOperacao == "-"
            QOut("Resultado: " + AllTrim(Str(nA - nB, 10, 2)))
        
        case cOperacao == "*"
            QOut("Resultado: " + AllTrim(Str(nA * nB, 10, 2)))
        
        case cOperacao == "/"
            if nB == 0
                QOut("Não existe divisão por zero!")
            else
                QOut("Resultado: " + AllTrim(Str(nA / nB, 10, 2)))
            end if

        case cOperacao == "^"
            QOut("Resultado: " + AllTrim(Str(nA ^ nB, 10, 2)))

        case cOperacao == "R"
            QOut("Resultado: " + AllTrim(Str(Sqrt(nA), 10, 2)) + " e " + AllTrim(Str(Sqrt(nB), 10, 2)))
        
        otherwise
            QOut("Operação inválida!")
    endcase

RETURN NIL 