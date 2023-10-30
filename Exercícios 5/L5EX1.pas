Program L5EX1;

	// Descrição do exercício:
		// Leia duas notas e calcule a média de um conjunto de 10 alunos. A saída do programa
		// deverá indicar de qual aluno pertence a média calculada. Ex:
		// Entre com a primeira nota: 6
		// Entre com a segunda nota: 7
		// A média do 1º aluno será: 6.5
		// Entre com a primeira nota: 6.5
		// Entre com a segunda nota: 9.5
		// A média do 3º aluno será: 8.0
		// ... (e assim por diante)
		
			
Var

	Nota1, Nota2, Media, I : Integer;
	
Begin

	For I := 1 to 10 do

	Begin

	Write('Entre com a primeira nota: ');
	Read(Nota1);

	Write('Entre com a segunda nota: ');
	Read(Nota2);

	Media := (Nota1 + Nota2) Div 2;

	Writeln('A media do ', I ,'º aluno sera: ', Media);

	Writeln;

	End;
	
End.