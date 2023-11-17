Program L7EX10;

	// Descrição do exercício:
		// Uma pesquisa de opinião realizada no Rio de Janeiro, formulou as seguintes perguntas para as pessoas entrevistadas:
		// Qual seu time de coração?
		// 1 – Flamengo
		// 2 – Botafogo
		// 3 – Fluminense
		// 4 – Vasco

		// Onde você mora?
		// 1 – RJ
		// 2 – Niterói
		// 3 – Grande Rio
		// 4 – Outros

		// Escreva um programa que calcule e imprima as seguintes informações
		// (o programa se encerra quando for digitado 0 para o time.
		// Lembre-se de não incluir informações inválidas no cálculo das informações abaixo, ou seja, os dados digitados após escolher 0 para o time):
		
		// a) O percentual de torcedores por clube;
		// b) O percentual de moradores do Grande Rio sobre todos os entrevistados;
		// c) O total de torcedores do Botafogo em Niterói;
		// d) A percentual de torcedores do Flamengo no RJ;
			
Var

	Time, Cidade : String;
	Contador, ContFla, ContFog, ContFlu, ContVas, ContRJ, ContNit, ContGra, ContOut, FlaRJ : Real;
	BotNit : Integer;

	
Begin

	Time := '1';
	Contador := 0;
	BotNit := 0;
	FlaRJ := 0;

	// Contadores dos times

	ContFla := 0;
	ContFog := 0;
	ContFlu := 0;
	ContVas := 0;

	// Contadores das cidades

	ContRJ  := 0;
	ContNit := 0;
	ContGra := 0;
	ContOut := 0;

	Repeat

	Writeln('Qual o seu time de coracao? Digite o número correspondente:');
	Writeln('1 – Flamengo');
	Writeln('2 – Botafogo');
	Writeln('3 – Fluminense');
	Writeln('4 – Vasco');

	Readln(Time);

	If Time <> '0' then

		Begin // Início do If INICIAL

		Case Time of // Início do Case Time

			 '1' : Begin Time := 'Flamengo';   ContFla := ContFla + 1; End;
			 '2' : Begin Time := 'Botafogo';   ContFog := ContFog + 1; End;
			 '3' : Begin Time := 'Fluminense'; ContFlu := ContFlu + 1; End;
			 '4' : Begin Time := 'Vasco';      ContVas := ContVas + 1; End;

			 End; // Final do Case Time

		Writeln('Onde você mora? Digite o número correspondente:');
		Writeln('1 – RJ');
		Writeln('2 – Niteroi');
		Writeln('3 – Grande Rio');
		Writeln('4 – Outros');
		Readln(Cidade);

		Case Cidade of // Início do Case Cidade

			'1' : Begin Cidade := 'RJ';         ContRJ  := ContRJ  + 1; End;
			'2' : Begin Cidade := 'Niteroi';    ContNit := ContNit + 1; End;
			'3' : Begin Cidade := 'Grande Rio'; ContGra := ContGra + 1; End;
			'4' : Begin Cidade := 'Outros';     ContOut := ContOut + 1; End;

			End; // Final do Case Cidade


		// c) O total de torcedores do Botafogo em Niterói;

		If (Time = 'Botafogo') and (Cidade = 'Niteroi') then BotNit := BotNit + 1;

		// d) A percentual de torcedores do Flamengo no RJ;

		If (Time = 'Flamengo') and (Cidade = 'RJ')      then FlaRJ  := FlaRJ  + 1;

		Contador := Contador + 1;

		Writeln;
		Writeln;

		End; // Final do If INICIAL

		Until Time = '0';

	// a) O percentual de torcedores por clube;

	Writeln('O percentual de torcedores por clube:');
	
	Writeln('Flamengo: ',   (ContFla*100) / Contador:1:2, '%');
	Writeln('Botafogo: ',   (ContFog*100) / Contador:1:2, '%');
	Writeln('Fluminense: ', (ContFlu*100) / Contador:1:2, '%');
	Writeln('Vasco: ',      (ContVas*100) / Contador:1:2, '%');

	Writeln;

	// b) O percentual de moradores do Grande Rio sobre todos os entrevistados;

	Writeln('O percentual de moradores do Grande Rio sobre todos os entrevistados e ', (ContGra*100) / Contador:1:2, '%');

	// c) O total de torcedores do Botafogo em Niterói;

	Writeln('O total de torcedores do Botafogo em Niteroi e ', BotNit);

	// d) A percentual de torcedores do Flamengo no RJ;

	Writeln('O percentual de torcedores do Flamengo no RJ e ', (FlaRJ*100) / Contador:1:2, '%');

End.