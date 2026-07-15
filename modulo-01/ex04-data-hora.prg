Function Main ()
    Local cIgual := "========================================"
    Local cNome:= "Andr‚ Vilcarromero"
    Local cCidade:= "Sorocaba - SP"
    Local cCurso:= "Harbour/ADVPL"
    Local nData:= Date()
    Local cHora:= Time()
    QOut (cIgual)
    QOut ("FICHA DE APRESENTA€ÇO")
    QOut (cIgual)
    QOut ("Nome : " + cNome)
    QOut ("Cidade : " + cCidade)
    QOut ("Curso : " + cCurso)
    QOut ("Data : "  + DToC(nData))
    QOut ("Hora : "   + cHora)
    QOut (cIgual)
Return Nil
