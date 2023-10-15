Program L1BEX8;

	// Descrição do exercício:
		// Faça programa que lê duas notas de um aluno
		// Calculae sua média e imprima uma	mensagem informando sua situação, sabendo que:
		// Aprovado => quando a média for maior ou igual a 7.
		// Reprovado => quando a média for menor do que 5.
		// Prova Final => quando a média estiver no intervalo [5, 7).

Var

	Nota1, Nota2, Media: Real;

Begin
	
	Writeln('Digite a sua primeira nota na prova:');
	Readln(Nota1);
	
	Writeln('Digite a sua segunda nota na prova:');
	Readln(Nota2);

	Media := (Nota1 + Nota2) / 2;

	
	If Media >= 7 then Writeln('Sua media e: ', Media:1:2,'. Voce foi aprovado! Nao sera necessario fazer a prova final!')
	    Else Writeln('Sua media e: ', Media:1:2, '. Voce está reprovado.');
			
		If (Media >= 5) and (media < 7) then Writeln('Voce deve fazer a prova final.');

End.