FUNCTION MAIN()

    LOCAL nIdade := 0, nDependentes := 0, nValor := 0, nTotal := 0

    INPUT "Digite sua idade: " TO nIdade
    INPUT "Digite o número de dependentes: " TO nDependentes
    
    IF nIdade <= 25
        nValor := 180
    ELSEIF nIdade <= 40
        nValor := 260
    ELSEIF nIdade <= 60
        nValor := 380
    ELSE
        nValor := 520
    ENDIF

    if nDependentes < 0
        nTotal := nValor
    else
        nTotal := nValor + (nDependentes * 90)
    endif

    QOut("O valor mensal total do plano é de R$ " + Alltrim(Str(nTotal, 10, 2)))

RETURN NIL