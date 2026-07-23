FUNCTION MAIN()

    LOCAL nSoma := 0
    LOCAL aNums := {5, 2, 8, 1, 9, 3}

    ASort(aNums)
    QOut(Str(AScan(aNums, 8)))

    AEval(aNums, {|nX| nSoma += nX})
    QOut("Soma: " + Str(nSoma))
RETURN NIL 