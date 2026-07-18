FUNCTION MAIN()

    LOCAL nMes := 0

    INPUT "Número do mês: " TO nMes

    if nMes < 1 .OR. nMes > 12
        QOut("Mês inválido!")
    else
         do case
            case Mod(nMes, 2) == 0
                If nMes == 2
                    QOut("Fevereiro")
                elseif nMes == 4
                    QOut("Abril")
                elseif nMes == 6
                    QOut("Junho")
                elseif nMes == 8
                    QOut("Agosto")
                elseif nMes == 10
                    QOut("Outubro")
                else
                    QOut("Dezembro")
                end if
            case Mod(nMes, 2) != 0
                If nMes == 1
                    QOut("Janeiro")
                elseif nMes == 3
                    QOut("Março")
                elseif nMes == 5
                    QOut("Maio")
                elseif nMes == 7
                    QOut("Julho")
                elseif nMes == 9
                    QOut("Setembro")
                else
                    QOut("Noveembro")
                end if
        endcase
    end if

RETURN NIL 