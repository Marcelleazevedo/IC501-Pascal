Program L1AEX4;

	// Descrição do exercício:
		//Leia dois valores para as variáveis A e B
		//Efetue a troca dos valores de forma que:
		//A variável A agora tem o valor da variável B e a variável B tenha o valor
		//da variável A.
		//Imprima os valores no final

Var

	A, B, C: Real;

Begin

	Writeln('Digite o valor de A:');
	Readln(A);

	Writeln('Digite o valor de B:');
	Readln(B);

	C:=A;
	A:=B;
	B:=C;

	Writeln('Valor de A:', A:1:1, ', Valor de B: ', B:1:1);

End.
