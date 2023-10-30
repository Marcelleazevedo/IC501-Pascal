Program LRevisaoEX5;

	// Descrição do exercício:
		// As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe contraram para desenvolver o programa que calculará os reajustes.
		// Faça um programa que recebe o salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
		// a) salários até R$ 280,00 (incluindo): aumento de 20%
		// b) salários entre R$ 280,00 e R$ 700,00: aumento de 15%
		// c) salários entre R$ 700,00 e R$ 1500,00: aumento de 10%
		// d) salários de R$ 1500,00 em diante: aumento de 5%
		
		// Após o aumento ser realizado, informe na tela:
		// a) o salário antes do reajuste;
		// b) o percentual de aumento aplicado;
		// c) o valor do aumento;
		// d) o novo salário, após o aumento.
			
Var

	Salario, SalarioNovo: Real;
	Porcentagem : Integer;
	
Begin

	Writeln('Qual o seu salario?');
	Readln(Salario);
	
	If      (Salario =< 280)                     then Begin SalarioNovo := (Salario*0.2)  + Salario; Porcentagem := 20; End
	Else If (Salario > 280) and (Salario < 700)  then Begin SalarioNovo := (Salario*0.15) + Salario; Porcentagem := 15; End
	Else if (Salario > 700) and (Salario < 1500) then Begin SalarioNovo := (Salario*0.1)  + Salario; Porcentagem := 10; End

		Else Begin SalarioNovo := (Salario*0.05) + Salario; Porcentagem := 5; End;

	Writeln('Seu salario antigo era de: ', Salario:1:2, ' reais. Seu salario agora e: ', SalarioNovo:1:2, ' reais.');
	Writeln('Seu salario aumentou em ', Porcentagem, '% e agora esta recebendo ', SalarioNovo-Salario:1:2, ' reais a mais.')

End.