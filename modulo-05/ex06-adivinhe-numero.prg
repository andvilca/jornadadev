FUNCTION MAIN()

    LOCAL nSorteio := HB_RandomInt(1,100), nPalpite := 0, nTentativa := 0

    FOR nTentativa := 1 TO 7

        INPUT "Digite seu palpite de 1 a 100: " TO nPalpite

        IF nPalpite == nSorteio
            QOut("Parabéns! Você adivinhou o número!")
            EXIT
        ELSEIF nPalpite > nSorteio
            QOut("O palpite é maior do que o número sorteado!")
        ELSE
            QOut("O palpite é menor do que o número sorteado!")
        ENDIF

    QOut("Você tem mais " + Alltrim(Str(7 - nTentativa, 10, 0)) + " tentativas!")

    END FOR
    
    QOut("Tentativas: " + Alltrim(Str(nTentativa - 1, 10, 0)))
    QOut("O número sorteado era " + Alltrim((Str(nSorteio, 10, 0))))

RETURN NIL