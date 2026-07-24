SET PROCEDURE TO estoque_lib.prg

FUNCTION MAIN()

    LOCAL aProduto := {}, nMenu := 1

    DO WHILE nMenu != 0

        QOut("--------------------------------")
        QOut("Controle de Estoque")
        QOut("Operação 1: Cadastrar produto")
        QOut("Operação 2: Listar produtos")
        QOut("Operação 3: Entrada de estoque")
        QOut("Operação 4: Saída de estoque")
        QOut("Operação 5: Buscar produto por código")
        QOut("Operação 6: Relatório: valor em estoque por produto e total geral")
        QOut("Operação 0: Sair")
        QOut("--------------------------------")

        INPUT "Digite a operação: " TO nMenu

        DO CASE
            CASE nMenu == 1
                Cadastrar(aProduto)
            CASE nMenu == 2
                Listar(aProduto)
            CASE nMenu == 3
                Entrada(aProduto)
            CASE nMenu == 4
                Saida(aProduto)
            CASE nMenu == 5
                Buscar(aProduto)
            CASE nMenu == 6
                Relatorio(aProduto)
            OTHERWISE
                QOut("Código inválido!")
        ENDCASE

    END WHILE

RETURN NIL