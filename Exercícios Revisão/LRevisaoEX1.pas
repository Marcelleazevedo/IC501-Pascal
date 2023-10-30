Program LRevisaoEX1;

	// Descrição do exercício:
	// Faça um Programa que verifique se uma letra digitada é vogal ou consoante.
			
Var

	Letra : Char;
	
Begin

	Writeln('Digite uma letra:');
	Readln(Letra);
	
	If (Letra = 'A') or (Letra = 'E') or (Letra = 'I') or (Letra = 'O') or (Letra = 'U') then Writeln('A letra "', Letra E, '" e uma vogal.')
	Else Writeln('A letra "', Letra E, '" e uma consoante.');
	
End.