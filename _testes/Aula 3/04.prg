FUNCTION MAIN ()
    LOCAL nIdade := 50
    Local lAtivo := .F.
    
    if (nIdade > 60 .and. lAtivo)
         ?"A pessoa é idosa e está ativa."
    ENDIF

    IF (nIdade < 18 .or. .not. lAtivo)
        ? "A pessoa não é idosa ou não está ativa."
    ENDIF


RETURN NIL