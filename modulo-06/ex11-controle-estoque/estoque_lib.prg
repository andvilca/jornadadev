FUNCTION Cadastrar(aProduto)

    LOCAL cContinue := "S", nI := 0

    DO WHILE cContinue == "S"

        AADD(aProduto, Array(4))

        nI := Len(aProduto)

        QOut("--------------------------------")
        INPUT "Digite o código do produto: " TO aProduto[nI, 1] 
        ACCEPT "Digite o nome do produto: " TO aProduto[nI, 2] 
        INPUT "Digite a quantidade do produto: " TO aProduto[nI, 3] 
        INPUT "Digite o preço unitário do produto: " TO aProduto[nI, 4] 

        ACCEPT "Adicionar mais um produto? [S/N] " TO cContinue
        cContinue := Upper(AllTrim(cContinue))

    END WHILE

RETURN NIL

FUNCTION Listar(aProduto)

    LOCAL nI := 0

    FOR nI := 1 to Len(aProduto)
        QOut("--------------------------------")
        QOut("Produto " + Alltrim(Str(nI)))
        QOut("Código: " + Alltrim(Str(aProduto[nI,1])))
        QQOut(" | Nome: " + aProduto[nI,2])
        QQOut(" | Quantidade: " + Alltrim(Str(aProduto[nI,3])))
        QQOut(" | Preço unitário: R$ " + Alltrim(Str(aProduto[nI,4], 10, 2)))
        QOut("--------------------------------")
    END FOR

RETURN NIL

FUNCTION Entrada(aProduto)

    LOCAL nI := 0, nCodigo := 0, nAumento := 0

    QOut("--------------------------------")
    INPUT "Digite o código do produto: " TO nCodigo

    FOR nI := 1 TO Len(aProduto)
        IF nCodigo == aProduto[nI,1]
            QOut("Quantidade em estoque: " + AllTrim(Str(aProduto[nI,3])))
            INPUT "Digite a quantidade do produto que entrou: " TO nAumento
            aProduto[nI,3] += nAumento
            QOut("Nova quantidade em estoque: " + AllTrim(Str(aProduto[nI,3])))
            RETURN NIL
        END IF
    END FOR

    QOut("Produto não encontrado!")

RETURN NIL

FUNCTION Saida(aProduto)

    LOCAL nI := 0, nCodigo := 0, nDiminui := 0

    QOut("--------------------------------")
    INPUT "Digite o código do produto: " TO nCodigo

    FOR nI := 1 TO Len(aProduto)
        IF nCodigo == aProduto[nI,1]
            QOut("Quantidade em estoque: " + AllTrim(Str(aProduto[nI,3])))
            INPUT "Digite a quantidade do produto que saiu: " TO nDiminui
            IF nDiminui > aProduto[nI,3]
                QOut("Quantidade maior do que o estoque!")
                RETURN NIL
            ELSE 
                aProduto[nI,3] -= nDiminui
                QOut("Nova quantidade em estoque: " + AllTrim(Str(aProduto[nI,3])))
            RETURN NIL
            END IF
        END IF
    END FOR

    QOut("Produto não encontrado!")

RETURN NIL

FUNCTION Buscar(aProduto)

    LOCAL nI := 0, nCodigo := 0

    QOut("--------------------------------")
    INPUT "Digite o código do produto: " TO nCodigo

    FOR nI := 1 TO Len(aProduto)
        IF nCodigo == aProduto[nI,1]
            QOut("--------------------------------")
            QOut("Produto " + Alltrim(Str(nI)))
            QOut("Código: " + Alltrim(Str(aProduto[nI,1])))
            QQOut(" | Nome: " + aProduto[nI,2])
            QQOut(" | Quantidade: " + Alltrim(Str(aProduto[nI,3])))
            QQOut(" | Preço unitário: R$ " + Alltrim(Str(aProduto[nI,4], 10, 2)))
            QOut("--------------------------------")
            RETURN NIL
        END IF
    END FOR

    QOut("Produto não encontrado!")

RETURN NIL

FUNCTION Relatorio(aProduto)

    LOCAL nI := 0, nValor := 0, nTotal := 0

    FOR nI := 1 to Len(aProduto)
        QOut("--------------------------------")
        QOut("Produto " + Alltrim(Str(nI)))
        QOut("Código: " + Alltrim(Str(aProduto[nI,1])))
        QQOut(" | Nome: " + aProduto[nI,2])
        QQOut(" | Quantidade: " + Alltrim(Str(aProduto[nI,3])))
        QQOut(" | Preço unitário: R$ " + Alltrim(Str(aProduto[nI,4], 10, 2)))
        nValor := aProduto[nI,3] * aProduto[nI,4]
        QOut(" | Valor em Estoque: R$ " + Alltrim(Str(nValor, 10, 2)))
        nTotal += nValor
        QOut("--------------------------------")
    END FOR

    QOut("Total Geral: R$ " + Alltrim(Str(nTotal, 10, 2)))

RETURN NIL