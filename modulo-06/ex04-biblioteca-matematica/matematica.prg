FUNCTION FatorialN(nN)

    LOCAL nI := 0, nResultado := 1
    
    INPUT "Digite o valor a ser fatorado: " TO nN

    IF nN == 0 .OR. nN == 1
        nResultado = 1
    ELSE
        FOR nI = 1 TO nN 
            nResultado *= nI
        END FOR
    END IF

RETURN nResultado

FUNCTION EhPrimo(nN)

    LOCAL nI := 0, nResultado := .T.

    INPUT "Digite o numero a ser verificado: " TO nN

    IF nN <= 1
        nResultado := .F.
        Return Nil 
    ELSE
        FOR nI := 2 TO Int(Sqrt(nN))
            IF nN % nI == 0
                nResultado := .F.
                EXIT
            END IF
        END FOR
    END ELSE

RETURN nResultado

FUNCTION MMC(nA, nB)

    LOCAL nMMC := 0

    INPUT "Digite o primeiro número: " TO nA
    INPUT "Digite o segundo número: " TO nB

    nMMC := IIf(nA > nB, nA, nB)

    DO WHILE .T.
        IF (nMMC % nA == 0) .AND. (nMMC % nB == 0)
            EXIT
        ENDIF

        nMMC++
    ENDDO
  
RETURN nMMC

FUNCTION MDC(nA, nB)

    LOCAL nResto := 0

    INPUT "Digite o primeiro número: " TO nA
    INPUT "Digite o segundo número: " TO nB

    DO WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO

RETURN nA