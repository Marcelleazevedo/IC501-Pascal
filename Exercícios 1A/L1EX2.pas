Program L1EX2;

	// Descrição do exercício:
		// Leia uma temperatura em graus Centígrados e apresente-a convertida em graus Fahrenheit.
		// F = (9*C+160)/5
		// Onde F é a temperatura em Fahrenheit e C é a temperatura em Centígrados
		
Var

	F, C: Real;
	
	// F = Valor da temperatura em Fahrenheit
	// C = Valor da temperatura em Celsius

Begin

	Writeln('Digita a temperatura em Celsius:');
	Readln(C);
	
	F:= (9*C+160)/5;
	
	Writeln('O valor da temperatura e ', F:1:1, 'º Fahrenheit');	

End.