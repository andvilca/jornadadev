#define teste03 "Teste03"

FUNCTION Main()
    MEMVAR nNumero
/*
    LOCAL
    PRIVATE
    PUBLIC
    STATIC
*/
    QOut(teste03)
    PUBLIC nNumero := 50
    Operacoes()

RETURN NIL

FUNCTION Operacoes()
    //Private nNumero := 10
    
    Soma()
    Subtrai()
RETURN NIL

FUNCTION Soma()
    MEMVAR nNumero
    //LOCAL nNumero := 10
    QOut(nNumero)
    QOut("Fun��o Soma")
RETURN NIL

FUNCTION Subtrai()
    MEMVAR nNumero
    //LOCAL nNumero := 10
    QOut(nNumero)
    QOut("Fun��o Subtrai")
RETURN NIL