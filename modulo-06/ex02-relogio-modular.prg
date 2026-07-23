FUNCTION MAIN()

    LOCAL cHora := "" 

    WaitPeriod(3000) 

    DO WHILE WaitPeriod() 
    ObterHora()
    cHora := ObterHora()
    FormatarHora(cHora)
    ExibirHora(cHora)
    Inkey(1)
    ENDDO

RETURN NIL 

FUNCTION ObterHora()

RETURN Time()

FUNCTION FormatarHora(cHora)

RETURN cHora

FUNCTION ExibirHora(cHora)

RETURN  QOut(cHora)
