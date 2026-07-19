FUNCTION MAIN ()

    LOCAL cNome := "", cDisciplina := "", nNota1 :=  0, nNota2 := 0, cResposta := "S"

    DO WHILE cResposta == "S"

        WHILE .T.

            ACCEPT "Digite o nome do aluno: " TO cNome

            IF Len(Trim(cNome)) > 0 
                EXIT
            ENDIF 

            QOut("Nome inválido!")
        
        END WHILE

        WHILE .T.

            ACCEPT "Digite o nome da disciplina: " TO cDisciplina

            IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina) 
                EXIT
            ENDIF 

            QOut("Disciplina inválida!")
        
        END WHILE

        WHILE .T.

            INPUT "Digite a primeira nota do aluno: " TO nNota1

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ENDIF 

            QOut("Nota inválida!")
        
        END WHILE

        WHILE .T.

            INPUT "Digite a segunda nota do aluno: " TO nNota2

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ENDIF 

            QOut("Nota inválida!")
        
        END WHILE

    QOut("Aluno: " + cNome)
    QOut("Disciplina: " + cDisciplina)
    QOut("Média: " + Alltrim(Str((nNota1 + nNota2) / 2, 10, 2)))  
    
    ACCEPT "Deseja calcular outro? (S/N) " TO cResposta

    END DO

RETURN NIL