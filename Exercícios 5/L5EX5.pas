Program L5EX5;

	// Descrição do exercício:
		// No dia da estréia do filme “Guerra nas Estrelas”, prevendo um público numeroso,
		// um cinema decidiu coletar alguns dados estatísticos sobre o público presente,
		// a fim de exibir outros filmes populares.
		// Para tal, foram coletadas as seguintes informações de cada espectador:

		// a) Idade
		// b) Grau de instrução, em anos.
		// c) Opinião sobre o filme: 1 = ótimo, 2 = regular ou 3 = péssimo.

		// Crie agora um programa que leia a quantidade de pessoas presentes e calcule:
		// a) A média das idades das pessoas que responderam ótimo.
		// b) A idade do espectador mais velho e a do mais novo.
		// c) O percentual de pessoas com mais de 10 anos de instrução que responderam péssimo.

Var

	Num, Idade, Grau, Opiniao, IdadeVelho, IdadeNovo, I : Integer;
	MediaIdade, Percentual : Real;
	
Begin

	Writeln('Quantas pessoas assistiram ao filme?');
	Readln(Num);

	MediaIdade := 0;
	Percentual := 0;
	IdadeVelho := 0;

	For I := 1 to Num do

	Begin

		Writeln('Ficha do espectador numero ', I);
		Writeln('Digite a idade:');
		Readln(Idade);

		Writeln('Digite o grau de instrucao em anos:');
		Readln(Grau);
		
		Writeln('Digite um numero de acordo com a opiniao sobre o filme:');
		Writeln('1 - Otimo, 2 - Regular, 3 - Pessimo');
		Readln(Opiniao);

		If (Opiniao = 1) then MediaIdade := MediaIdade + 1;
	
		If (Idade > IdadeVelho) then IdadeVelho := Idade;
		
		If (I = 1) then IdadeNovo := Idade;

		If (Idade < IdadeNovo) then IdadeNovo := Idade;

		If (Grau > 10) and (Opiniao = 3) then Percentual := Percentual + 1;

		Writeln;

	End;
	
	Writeln('A media das idades das pessoas que responderam otimo e: ', MediaIdade / Num:1:2);
	Writeln('A idade do espectador mais velho e: ', IdadeVelho);
	Writeln('A idade do espectador mais novo e: ', IdadeNovo);
	Writeln('O percentual de pessoas com mais de 10 anos de instrução que responderam péssimo e ', (Percentual * 100) / Num:1:2, ' %');

End.