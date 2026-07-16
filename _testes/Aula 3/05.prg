FUNCTION MAIN ()

    LOCAL nNumero := 50
    LOCAL cTexto := ""
    LOCAL dData := Date()

    SET DATE FORMAT TO "DD/MM/YYYY"

    QOut ("Numero: " + Alltrim(str(nNumero)))
    QOut ("Texto: " + cTexto)
    QOut ("Data: " + DToC(dData))

RETURN NIL