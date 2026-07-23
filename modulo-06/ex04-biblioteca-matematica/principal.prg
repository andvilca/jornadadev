SET PROCEDURE TO matematica.prg

FUNCTION MAIN()

    LOCAL nN := 0, nA := 0, nB := 0

    QOut(FatorialN(nN))
    QOut(EhPrimo(nN))
    QOut(MMC(nA, nB))
    QOut(MDC(nA, nB))

RETURN NIL 