Program LRevisaoEX19;

	// Descrição do exercício:
		// Faça um programa que calcule o número médio de alunos por turma.
		// Para isto, peça a quantidade de turmas e a quantidade de alunos para cada turma. As turmas não podem ter mais de 40 alunos.
			
Var

	Turmas, Media, Alunos, SomaAlunos, NumTurmas, I : Integer;

Begin

	Writeln('Quantas turmas serao calculadas?');
	Readln(Turmas);
	
	SomaAlunos := 0;
	NumTurmas := Turmas;
	
	For I := 1 to Turmas Do
	
	Begin
	
	Writeln('Quantos alunos tem na turma ', I);
	Writeln('As turmas não podem ter mais de 40 alunos');
	Readln(Alunos);
		
		If Alunos <= 40 then
			SomaAlunos := SomaAlunos + Alunos

		Else 
		Begin
	
		Writeln('Numero de alunos da turma invalido.');
		Writeln('Voce informou que a turma tem ', Alunos, ' alunos, porem o valor nao pode ultrapassar 40 alunos.');
		NumTurmas := NumTurmas - 1;
	
		End;
		
	End;
	
	Media := SomaAlunos Div Turmas;
	
	If (Numturmas <> Turmas) then
	Begin
		Writeln('Numero de turmas totais: ', Turmas);
		Writeln('Numero de turmas validas (com o numero de alunos corretos): ', NumTurmas);
		Writeln('Media de alunos por turma: ', Media);
	
	End
	
	Else
	Begin
	
		Writeln('Numero de turmas totais: ', Turmas);
		Writeln('Media de alunos por turma: ', Media);

	End;
End.