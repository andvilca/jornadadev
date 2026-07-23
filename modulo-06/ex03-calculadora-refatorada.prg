FUNCTION MAIN()

    LOCAL nA := 0, nB := 0, cOperacao := "", nResultado := 0

    nA := LerNumero("Digite o primeiro número: ")
    nB := LerNumero("Digite o segundo número: ")
    cOperacao := LerOperacao("Digite qual operação a ser realizada  +, -, *, /, ^ (Potência), R (Raiz): ")

    IF Calcular(nA, nB, cOperacao, @nResultado)
        MostrarResultado(nResultado)
    ELSE
        QOut("Operação inválida!")
    ENDIF

RETURN NIL 

FUNCTION LerNumero(cMensagem)

    LOCAL cInput
    ACCEPT cMensagem TO cInput

RETURN Val(cInput)

FUNCTION LerOperacao(cMensagem)

    LOCAL cInput
    ACCEPT cMensagem TO cInput

RETURN cInput

FUNCTION Calcular(nA, nB, cOperacao, nResultado)

     do case
        case cOperacao == "+"
            nResultado := nA + nB
        
        case cOperacao == "-"
            nResultado := nA - nB
        
        case cOperacao == "*"
            nResultado := nA * nB
        
        case cOperacao == "/"
            if nB == 0
            RETURN .F.
            else
                nResultado := nA / nB 
            end if

        case cOperacao == "^"
            nResultado := nA ^ nB

        case cOperacao == "R"
            nResultado := Sqrt(nA)
        
        otherwise
            RETURN .F.
    endcase

RETURN .T.

FUNCTION MostrarResultado(nResultado)

    QOut("Resultado: " + AllTrim(Str(nResultado, 10, 2)))

RETURN NIL