Program L8EX2;

	// Descrição do exercício:
		// Ler as 2 notas de 10 alunos, calcule a média e a situação
		// APÓS a leitura e o cálculo das médias:
		// imprima as médias e situações de cada aluno, considerando:
		
		// media >= 7 Aprovado
		// 4 <= media < 7 Prova Final
		// media < 4 Reprovado

Var

	Nota1, Nota2, Media : Array[1..10] of Real;
	I : Integer;
	
Begin

	For I := 1 to 10 do
	
	Begin // Início do For

		Writeln('Qual a primeira nota do aluno ', I);
		Readln(Nota1[I]);

		Writeln('Qual a segunda nota do aluno ', I);
		Readln(Nota2[I]);

		Media[I] := (Nota1[I] + Nota2[I]) / 2;

	End; // Final do For

	Writeln;

	For I := 1 to 10 do

	Begin

		// media >= 7 Aprovado
		// 4 <= media < 7 Prova Final
		// media < 4 Reprovado

		Writeln('O aluno ', I, ' teve media ', Media[I]:1:2);

		If (Media[I] >= 7)
			then Writeln('O aluno foi aprovado.')

		Else If (Media[I] >= 4) and (Media[I] < 7)
			then Writeln('O aluno devera fazer a prova final.')

		Else
			Writeln('O aluno foi reprovado');

			Writeln;

	End;
	
End.