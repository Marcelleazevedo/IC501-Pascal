Program L7EX6;

	// Descrição do exercício:
		// Escreva um programa que leia um conjunto de informações:
		// Nome, sexo, idade, peso e altura dos atletas que irão participar de um campeonato de atletismo.
		// Ao final da leitura, informe:

			// a) O nome do atleta masculino mais alto
			// b) O nome da atleta feminina mais pesada
			// c) A média de idade dos atletas
			
Var

	Continuar, Sexo : Char;
	Nome, NomeAltura, NomePeso : String;
	Idade, Altura, MaiorAltura, Contador : Integer; // A altura será contada em centímetros, por isso é integer
	Peso, MaiorPeso, SomaIdade : Real;
	
Begin

	Continuar := 'S';
	Idade := 0;
	MaiorPeso := 0;
	MaiorAltura := 0;
	Contador := 0;
	SomaIdade := 0;

	Repeat

		// Nome, sexo, idade, peso e altura

		Writeln('Qual o nome do(a) atleta?');
		Readln(Nome);

		Writeln('Qual o gênero do(a) atleta?');
		Writeln('Digite "M" (sem as aspas) para genero masculino e "F" (sem as aspas) para genero feminino');
		Readln(Sexo);

		Writeln('Qual a idade do(a) atleta?');
		Readln(Idade);
		
		Writeln('Qual o peso do(a) atleta?');
		Readln(Peso);
		
		Writeln('Qual a altura do(a) atleta?');
		Readln(Altura);

		// a) O nome do atleta masculino mais alto

		If (Altura > MaiorAltura) and (Sexo = 'M') then
			
			Begin

				MaiorAltura := Altura;
				NomeAltura := Nome;

			End; 

		// b) O nome da atleta feminina mais pesada

		If (Peso > MaiorPeso) and (Sexo = 'F') then

			Begin

				MaiorPeso := Peso;
				NomePeso := Nome;

			End;

		// c) A média de idade dos atletas
		
		Contador := Contador + 1; // Esse código contará os atletas
		SomaIdade := SomaIdade + Idade; // Esse código somará a idade

		Writeln;
		Writeln('Deseja adicionar os dados de mais atletas?');
		Writeln('Digite "S" (sem as aspas) caso queira continuar ou "N" (sem as aspas) caso queira parar o programa para obter os resultados da pesquisa.');
		Readln(Continuar);
		Writeln;

	Until Continuar = 'N';

	Writeln('O nome do atleta masculino mais alto e ', NomeAltura, '.');
	Writeln('O nome da atleta feminina mais pesada e ', NomePeso,'.');
	Writeln('A média de idade dos atletas e ', SomaIdade/Contador:1:2);

End.