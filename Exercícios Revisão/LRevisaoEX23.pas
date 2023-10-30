Program LRevisaoEX23;

	// Descrição do exercício:
		// Em uma eleição presidencial existem quatro candidatos. Os votos são informados por meio de código.
		// Os códigos utilizados são:
		// 1, 2, 3, 4 - Votos para os respectivos candidatos
		// (você deve montar a tabela, ex: 1 - Jose/ 2- João/etc)
		// 5 - Voto Nulo
		// 6 - Voto em Branco
		// Faça um programa que calcule e mostre:
		// a) O total de votos para cada candidato;
		// b) O total de votos nulos;
		// c) O total de votos em branco;
		// d) A percentagem de votos nulos sobre o total de votos;
		// e) A percentagem de votos em branco sobre o total de votos. Para finalizar o conjunto de votos tem-se o valor zero.

Var

	Voto, N, I ,Votos1, Votos2, Votos3, Votos4, Votos5, Votos6, VotosTotais : Longint;

Begin

	Writeln('Quantas pessoas irao votar?');
	Readln(N);
	
	Votos1 := 0;
	Votos2 := 0;
	Votos3 := 0;
	Votos4 := 0;
	Votos5 := 0;
	Votos6 := 0;
	VotosTotais := 0;

	For I:= 1 to N do
	
	Begin
	
	Writeln('Vote em um candidato para a presidencia digitando o numero correspondente do mesmo:');
	Writeln('Por exemplo: se quiser votar no candidato 4 - Eymael, digite "4" sem as aspas.');
	
	Writeln;
	
	Writeln('1 - Danilo Gentili');
	Writeln('2 - BolsoLula');
	Writeln('3 - Javier Milei');
	Writeln('4 - Eymael');
	Writeln('5 - Nulo');
	Writeln('6 - Voto em Branco');
	
	Readln(Voto);

	VotosTotais := VotosTotais + 1;

		Case Voto of

			1 : Votos1 := Votos1 + 1;
			2 : Votos2 := Votos2 + 1;
			3 : Votos3 := Votos3 + 1;
			4 : Votos4 := Votos4 + 1;
			5 : Votos5 := Votos5 + 1;
			6 : Votos6 := Votos6 + 1;	

		End;
		
	End;


	Writeln;
	
	Writeln('Total de votos do candidato 1 (Danilo Gentili): ', Votos1);
	Writeln('Total de votos do candidato 2 (BolsoLula): ', Votos2);
	Writeln('Total de votos do candidato 3 (Javier Milei): ', Votos3);
	Writeln('Total de votos do candidato 4 (Eymael): ', Votos4);
	Writeln('Total de votos nulos: ', Votos5);
	Writeln('Total de votos em branco: ', Votos6);
	
	Writeln;
	
	Writeln('Porcentagem de votos nulos: ', (Votos5*100) Div VotosTotais, '%');
	Writeln('Porcentagem de votos brancos: ', (Votos6*100) Div VotosTotais, '%');

End.