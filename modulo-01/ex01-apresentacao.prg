Function Main ()
    Local cIgual := "======================"
    Local cNome:= "Andr‚ Vilcarromero"
    Local cCidade:= "Sorocaba - SP"
    Local cCurso:= "Harbour/ADVPL"
    hb_cdpSelect("PT850")
    QOut (cIgual)
    QOut ("FICHA DE APRESENTA€ÇO")
    QOut (cIgual)
    QOut ("Nome : " + cNome)
    QOut ("Cidade : " + cCidade)
    QOut ("Curso : " + cCurso)
    QOut (cIgual)
Return Nil
