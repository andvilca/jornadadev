FUNCTION MAIN()

    LOCAL aAluno := {}, nN := 0, nI := 0, nMedia := 0, nJ := 0

    INPUT "Digite a quantidade de alunos: " TO nN

    aAluno := Array(nN,5)

    FOR nI := 1 TO nN
        FOR nJ:= 1 TO 5
            IF nJ == 1
                Accept "Digite o nome do " + AllTrim(Str(nI)) + " aluno: " TO aAluno[nI, nJ]
            ELSE
                INPUT "Digite a " + AllTrim(Str(nJ - 1)) + " nota: " TO aAluno[nI, nJ]
            END IF
        END FOR
    END FOR

    FOR nI := 1 TO nN
        nMedia := 0
        FOR nJ:= 2 TO 5
                nMedia += aAluno[nI, nJ]
        END FOR
        nMedia /= 4
        IF nMedia >= 7
            QOut("Aluno " + aAluno[nI, 1] + " está aprovado!")
        ELSE
            QOut("Aluno " + aAluno[nI, 1] + " está reprovado!")
        END IF
    END FOR

RETURN NIL