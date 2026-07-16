FUNCTION MAIN()

    LOCAL cNome 
    Local nIdade 
    LOCAL nValor1 
    LOCAL nValor2 


     // ACCEPT lê uma string
   ACCEPT "Digite seu nome: " TO cNome

   // INPUT lê um valor (número, string, data, lógico)
   INPUT "Digite sua idade: " TO nIdade

   ACCEPT "Digite o primeiro valor: " TO nValor1
   ACCEPT "Digite o segundo valor: " TO nValor2

   nValor1 := Val(nValor1)
   nValor2 := Val(nValor2)

   QOut("Olá, " + cNome + "!")
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")
   Qout("Total da soma: " + Alltrim(Str(nValor1 + nValor2)))

RETURN NIL