Program L2EX8;

	// Descrição do exercício:
		// Leia uma sigla de estado de nascimento de uma pessoa e:
		// Imprima uma das seguintes mensagens: “carioca”, “paulista”, “mineiro”, “outros estados”.
	
Var

	Estado : String;
	
Begin

	Writeln('Digite a sigla de um estado brasileiro:');
	Writeln('Exemplo: RJ');
	Readln(Estado);
	
	Case Estado of
	
	// Estados do Norte:
		'AC' : Writeln('Quem nasce no estado "', Estado, '" e acreano');
		'AM' : Writeln('Quem nasce no estado "', Estado, '" e amazonense');
		'AP' : Writeln('Quem nasce no estado "', Estado, '" e amapaense');
		'PA' : Writeln('Quem nasce no estado "', Estado, '" e paraense');
		'RO' : Writeln('Quem nasce no estado "', Estado, '" e rondoniense');
		'RR' : Writeln('Quem nasce no estado "', Estado, '" e roraimense');
		'TO' : Writeln('Quem nasce no estado "', Estado, '" e tocantinense');

	// Estados do Nordeste:
		'AL' : Writeln('Quem nasce no estado "', Estado, '" e alagoano');
		'BA' : Writeln('Quem nasce no estado "', Estado, '" e baiano');
		'CE' : Writeln('Quem nasce no estado "', Estado, '" e cearense');
		'MA' : Writeln('Quem nasce no estado "', Estado, '" e maranhense');
		'PB' : Writeln('Quem nasce no estado "', Estado, '" e paraibano');
		'PE' : Writeln('Quem nasce no estado "', Estado, '" e pernambucano');
		'PI' : Writeln('Quem nasce no estado "', Estado, '" e piauiense');
		'RN' : Writeln('Quem nasce no estado "', Estado, '" e potiguar');
		'SE' : Writeln('Quem nasce no estado "', Estado, '" e sergipano');

	// Estados do Centro-Oeste:
		'DF' : Writeln('Quem nasce no estado "', Estado, '" e brasiliense');
		'GO' : Writeln('Quem nasce no estado "', Estado, '" e goiano');
		'MS' : Writeln('Quem nasce no estado "', Estado, '" e sul-mato-grossense');
		'MT' : Writeln('Quem nasce no estado "', Estado, '" e mato-grossense');

	// Estados do Sudeste:
		'ES' : Writeln('Quem nasce no estado "', Estado, '" e capixaba');
		'MG' : Writeln('Quem nasce no estado "', Estado, '" e mineiro');
		'RJ' : Writeln('Quem nasce no estado "', Estado, '" e carioca');
		'SP' : Writeln('Quem nasce no estado "', Estado, '" e paulista');

	// Estados do Sul:
		'PR' : Writeln('Quem nasce no estado "', Estado, '" e paranaense');
		'RS' : Writeln('Quem nasce no estado "', Estado, '" e gaúcho');
		'SC' : Writeln('Quem nasce no estado "', Estado, '" e catarinense');
	End;

End.

