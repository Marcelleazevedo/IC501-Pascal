Program L1BEX6;

	// Descrição do exercício:
		// Segundo uma tabela médica, o peso ideal está relacionado com a altura e o sexo de o seu peso ideal
		// utilizando as fórmulas:
		// Para homens: (72.7 * Altura) -58
		// Para mulheres: (62.1 * Altura) – 44.7

Var

	Altura: Real;
	Sexo: Char;
	
	// Char é utilizado para apenas um caractere

Begin

	Writeln('Voce e homem ou mulher?');
	Writeln('Digite H, caso seja homem.');
	Writeln('Digite M, caso seja mulher.');
	Readln(Sexo);
	
	Writeln('Digite a sua altura:');
	Writeln('Exemplo: 1.80');
	Readln(Altura);
	
	If (Upcase(Sexo) = 'H') then Writeln('O peso ideal para um homem da sua altura e: ', (72.7*Altura)-58:1:2, '.')
						  Else Writeln('O peso ideal para uma mulher da sua altura e: ', (62.1*Altura)-44.7:1:2, '.');

	// Upcase é utilizado para deixar a variável em letra maiúscula.
	// Esse comando foi utilizado aqui, pois existe a possibilidade do usuário digitar "h" ou "m" em vez de "H" ou "M".
		// Upcase funciona com variáveis que são textos.

End.