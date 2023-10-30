Program LRevisaoEX18;

	// Descrição do exercício:
		// Numa eleição existem três candidatos. Faça um programa que peça:
		// O Número total de votantes.
		// Peça para cada votante votar e ao final mostrar o número de votos de cada candidato.
Var

	CandidatoA, CandidatoB, CandidatoC, Voto, Votantes, I : Integer;
	
Begin

	Writeln('Qual o numero total de votantes?');
	Read(Votantes);
	
	
	CandidatoA := 0;
	CandidatoB := 0;
	CandidatoC := 0;
	
	For I := 1 to Votantes do
	
	Begin
	
	Writeln('Em qual candidato você quer votar?');
	Writeln('Para votar no Candidato A digite: 1');
	Writeln('Para votar no Candidato B digite: 2');
	Writeln('Para votar no Candidato C digite: 3');	
	Readln(Voto);
	
		Case Voto of 

		1 : CandidatoA := CandidatoA + 1;
		2 : CandidatoB := CandidatoB + 1;
		3 : CandidatoC := CandidatoC + 1;

		End;

	End;
	
	Writeln('O Candidato A teve ', CandidatoA, ' votos.');
	Writeln('O Candidato B teve ', CandidatoB, ' votos.');
	Writeln('O Candidato C teve ', CandidatoC, ' votos.');
	
End.


	// Também é possível utilizar Case of em vez de If.
	// Abaixo é possível ver o mesmo exercício sendo resolvido dessa forma:

{Program LRevisaoEX18;

	// Descrição do exercício:
		// Numa eleição existem três candidatos. Faça um programa que peça:
		// O Número total de votantes.
		// Peça para cada votante votar e ao final mostrar o número de votos de cada candidato.
Var

	CandidatoA, CandidatoB, CandidatoC, Voto, Votantes, I : Integer;
	
Begin

	Writeln('Qual o numero total de votantes?');
	Read(Votantes);
	
	
	CandidatoA := 0;
	CandidatoB := 0;
	CandidatoC := 0;
	
	For I := 1 to Votantes do
	
	Begin
	
	Writeln('Em qual candidato você quer votar?');
	Writeln('Para votar no Candidato A digite: 1');
	Writeln('Para votar no Candidato B digite: 2');
	Writeln('Para votar no Candidato C digite: 3');	
	Readln(Voto);
	
	If      (Voto = 1) then CandidatoA := CandidatoA + 1
	Else If (Voto = 2) then CandidatoB := CandidatoB + 1
	Else If (Voto = 3) then CandidatoC := CandidatoC + 1;

	End;
	
	Writeln('O Candidato A teve ', CandidatoA, ' votos.');
	Writeln('O Candidato B teve ', CandidatoB, ' votos.');
	Writeln('O Candidato C teve ', CandidatoC, ' votos.');
	
End.}