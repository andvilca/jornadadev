FUNCTION MAIN()

    LOCAL nX := 5
    nX := Dobrar(nX)
    DobrarRef(@nX)
    ? nX

RETURN NIL

FUNCTION Dobrar(nValor)
    nValor *= 2
    nValor := 1
RETURN nValor

FUNCTION DobrarRef(nValor)
    nValor *= 2 ; RETURN NIL 
    //nX := Dobrar(nX)
    //DobrarRef(@nX)
RETURN NIL 