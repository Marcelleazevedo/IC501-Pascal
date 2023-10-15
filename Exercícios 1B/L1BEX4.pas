Program L1BEX4;

	// Descrição do exercício:
		// Um banco abriu uma linha de crédito para funcionários públicos federais.
		// O valor máximo da prestação não poderá ultrapassar 30% do salário bruto dos funcionários.
		// Faça um programa que permita entrar com o salário bruto e o valor da prestação pretendida.
		// O programa então informa se o empréstimo pode ou não ser concedido, e o valor máximo que poderá ser emprestado.
		
Var

	Salario, Prest, Salario30: Real;
	
	// Salario = Salário bruto do usuário - Prest = Valor da prestação do empréstimo pretendida
	// Salario30 = 30% do salário

Begin

	Writeln('Digite o seu salario:');
	Readln(Salario);
	
	Writeln('Digite a prestacao do emprestimo:');
	Writeln('Lembre-se que o valor da prestacao nao pode ultrapassar 30% do seu salario.');
	Readln(Prest);

	Salario30 := Salario*0.3;

	If (Prest > Salario30) then Writeln('Seu emprestimo foi negado. O valor maximo das parcelas mensais e: ', Salario30:1:1)
		Else Writeln('Seu emprestimo foi aprovado! O valor maximo das parcelas mensais e: ', Salario30:1:1);
	
End.