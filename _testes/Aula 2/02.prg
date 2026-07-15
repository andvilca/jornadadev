function MAIN ()
    LOCAL nValor := 80
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    if nValor > 100
        nDesconto := nValor *0.1   
    Endif
    nTotal := nValor - nDesconto
    QOut("O valor total com desconto ‚ de: R$" + str(nTotal))

return NIL 