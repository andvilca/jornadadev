#define PI 3.14159

FUNCTION MAIN()

    Area()
    Hipotenusa()
    IMC()

RETURN NIL

FUNCTION AREA()

    LOCAL nRaio

    INPUT "Digite o raio: " TO nRaio

    QOut("A área é de: " + AllTrim(Str(PI * (nRaio ^ 2), 10, 2)))

RETURN NIL

FUNCTION Hipotenusa()

    LOCAL nCatetoA
    LOCAL nCatetoB

    INPUT "Digite o primeiro cateto: " TO nCatetoA
    INPUT "Digite o segundo cateto: " TO nCatetoB

    QOut("A hipotenusa do triângulo é: " + AllTrim(Str(Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2)), 10, 2)))

RETURN NIL

FUNCTION IMC()

    LOCAL nPeso
    LOCAL nAltura

    INPUT "Digite o peso: " TO nPeso
    INPUT "Digite a altura: " TO nAltura

    QOut("O IMC é de: " + AllTrim(Str(nPeso / (nAltura ^ 2), 10, 2)))

RETURN NIL