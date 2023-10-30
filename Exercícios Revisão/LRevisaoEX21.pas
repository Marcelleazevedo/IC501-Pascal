Program LRevisaoEX21;

	// Descrição do exercício:
		// 21) Faça um programa que calcule:
		// O valor total investido por um colecionador em sua coleção de CDs;
		// O valor médio gasto em cada um deles;
		// O usuário deverá informar a quantidade de CDs e o valor para em cada um.
Var

	CD, I : Integer;
	Total, ValorCD, Media: Real;

Begin
	
	Writeln('Quantos CDs você comprou?');
	Readln(CD);
	
	Total := 0;
	
	For I:= 1 to CD do
	
	Begin
			Writeln('Qual o valor do ', I, 'o CD?');
			Readln(ValorCD);

			Total := Total + ValorCD;

	End;

	Media := Total / CD; 

	Writeln('O valor medio gasto com CDs e de: ', Media:1:2, ' reais.');	
	Writeln('O total investido por voce e: ', Total:1:2), ' reais.';

End.