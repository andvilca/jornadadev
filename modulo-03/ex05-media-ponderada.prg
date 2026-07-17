FUNCTION MAIN()

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMedia := 0

    INPUT "Digite a primeira nota: " TO nNota1
    INPUT "Digite a segunda nota: " TO nNota2
    INPUT "Digite a terceira nota: " TO nNota3
    INPUT "Digite a quarta nota: " TO nNota4

    nMedia := ((nNota1 * 1) + (nNota2 * 2) + (nNota3 * 3) + (nNota4 * 4)) / (1 + 2 + 3 + 4)

    QOut("A média ponderada é: " + AllTrim(Str(nMedia, 10, 2)))

RETURN NIL
