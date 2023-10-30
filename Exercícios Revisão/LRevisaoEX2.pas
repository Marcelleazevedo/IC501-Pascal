Program LRevisaoEX2;

	// Descrição do exercício:
	// Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a média alcançada por aluno e apresentar:
	// a) A mensagem "Aprovado", se a média alcançada for maior ou igual a sete;
	// b) A mensagem "Reprovado", se a média for menor do que sete;
	// c) A mensagem "Aprovado com Distinção", se a média for igual a dez.
			
Var

	Nota1, Nota2, Media : Real;
	
Begin

	Writeln('Digite a sua primeira nota:');
	Readln(Nota1);
	
	Writeln('Digite a sua segunda nota:');
	Readln(Nota2);
	
	Media := (Nota1 + Nota2)/2
	
	If       (Media >= 7) and (Media < 10) Then Writeln('Aprovado.')
	Else If  (Media < 7)                   Then Writeln('Reprovado');
	Else If  (Media = 10)                  Then Writeln('Aprovado com Distinção.');
		
End.