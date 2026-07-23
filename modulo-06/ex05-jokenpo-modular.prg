FUNCTION MAIN()

    LOCAL cJogada1 := "", cJogada2 := "", cContinue := "S"

    DO WHILE cContinue == "S"
        cJogada1 := SortearJogadaCPU()
        cJogada2 := ValidarJogada()
        QOut("CPU: " + cJogada1)
        QOut("Jogador: " + cJogada2)
        QOut("O vencedor é: " + DefinirVencedor(cJogada1,cJogada2))
        ACCEPT "Continuar a jogar? [S/N] " TO cContinue
        cContinue := Upper(AllTrim(cContinue))
    END WHILE

RETURN NIL 

FUNCTION SortearJogadaCPU()

    LOCAL aJogadas := {"R","P","S"}

RETURN aJogadas[HB_RandomInt(1,3)]

FUNCTION ValidarJogada(cJogada)

    DO WHILE .T.

        ACCEPT "Insira a sua jogada (Pedra[R], Papel[P], Tesoura[S]): " TO cJogada

        cJogada := Upper(AllTrim(cJogada))

            IF cJogada == "R" .OR. cJogada == "P" .OR. cJogada == "S"
                EXIT
            ENDIF

            QOut("Jogada inválida!")
    ENDDO

RETURN cJogada

FUNCTION DefinirVencedor(cJogada1, cJogada2)

    IF cJogada1 == cJogada2 
        RETURN "Empate"
    ENDIF

    IF ;
        (cJogada1 == "R" .AND. cJogada2 == "S") .OR. ;
        (cJogada1 == "P" .AND. cJogada2 == "R") .OR. ;
        (cJogada1 == "S" .AND. cJogada2 == "P")

        RETURN "CPU"
    ENDIF

RETURN "Jogador"