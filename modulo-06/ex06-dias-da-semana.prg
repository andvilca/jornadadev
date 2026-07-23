FUNCTION MAIN()

    LOCAL aDias := {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"}, nNum := 0

    DO WHILE .T.

        INPUT "Digite o número do dia da semana [1-7]: " TO nNum

            IF nNum >= 1 .AND. nNum <= 7
                EXIT
            ENDIF

        QOut("Número inválido!")
    ENDDO

    QOut("O dia é " + aDias[nNum])

RETURN NIL