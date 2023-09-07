#!/bin/bash

leia() {
    echo "Digite o 1º numero:"
    read num1
    echo "Digite o 2º numero:"
    read num2
}

soma() {
    echo "Resultado:"
    echo $[$num1 + $num2]
}

subtracao() {
    echo "Resultado:"
    echo $[$num1 - $num2]
}

multiplicacao() {
    echo "Resultado:"
    echo $[$num1 * $num2]
}

divisao() {
    echo "Resultado:"
    echo $[$num1 / $num2]
}
opc=1

while [ $opc -ne 0 ]
do
echo "========CALCULADORA========="
echo "Escolha a operação desejada:"
echo "1 - Soma;"
echo "2 - Subtração;"
echo "3 - Multiplicação;"
echo "4 - Divisão;"
echo "0 - Sair;"

read opc

case "$opc" in
1)
leia
soma;;
2)
leia
subtracao;;
3)
leia
multiplicacao;;
4)
leia
divisao;;
0)
;;
*)
echo "Opção Inválida!";;
esac

done