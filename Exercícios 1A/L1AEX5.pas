Program L1AEX5;
	
	// Descrição do exercício:
		//Faça um programa que leia:
		//O valor do salário mínimo e o valor do salário de um funcionário
		//Calcule e imprima quantos salários mínimos ganha o funcionário

Var

	SM, SF, X: Real;

	//SM = Salário Mínimo - SF = Salário do Funcionário
	//X= Total de Salários Mínimos

Begin

	Writeln('Digite o salario minimo atual:');
	Readln(SM);

	Writeln('Digite o salario do funcionario:');
	Readln(SF);

	X:= SF/SM;

	Writeln('O funcionario recebe ', X:1:2, ' salarios minimos');

End.
