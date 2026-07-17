FUNCTION MAIN()

    LOCAL cNome := ""
    LOCAL cDataNascimento := ""
    LOCAL dNascimento := CTOD("")
    LOCAL nPreco := 0
    LOCAL nIdade := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    SET DATE FORMAT TO "DD/MM/YYYY"

    ACCEPT "Digite seu nome: " TO cNome
    ACCEPT "Digite a data de nascimento: " TO cDataNascimento
    ACCEPT "Digite o preço do produto: " TO nPreco

    dNascimento := CTOD(cDataNascimento)
    nPreco := Val(nPreco)
    nIdade := Int((Date() - dNascimento) / 365)

    IF nIdade >= 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("Nome: " + cNome)
    QOut("Idade: " + AllTrim(Str(nIdade, 10, 0)))
    QOut("Preço: R$" + AllTrim(Str(nPreco, 10, 2)))
    QOut("Desconto: R$" + AllTrim(Str(nDesconto, 10, 2)))
    QOut("Total: R$" + AllTrim(Str(nTotal, 10, 2)))
    


RETURN NIL