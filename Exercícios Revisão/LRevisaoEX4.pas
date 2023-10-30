Program LRevisaoEX4;

	// Descrição do exercício:
		// Faça um Programa que pergunte em que turno você estuda.
		// Peça para digitar M- matutino ou V-Vespertino ou N- Noturno.
		// Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor Inválido!", conforme o caso.
			
Var

	Turno : Char;
	
Begin

	Writeln('Digite a letra correspondente ao turno que você estuda:');
	Writeln('M - Matutino');	
	Writeln('V - Vespertino');
	Writeln('N - Noturno');
	Readln(Turno);
	
	Case Turno of
	
	'M' : Writeln('Bom dia!');
	'V' : Writeln('Boa tarde!');
	'N' : Writeln('Boa noite!');
	
	Else Writeln('Valor inválido!');
	
	End;
	
End.