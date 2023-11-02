Program L7EX9;

	// Descrição do exercício:
		// Escreva um programa que leia os valores de:
		// Idade, altura e peso de um conjunto de pessoas
		
		// Encerre a leitura com o valor 0 para a idade
		// Calcule e imprima:
			// a) A quantidade de pessoas com idade superior a 60 anos;
			// b) A média de altura das pessoas com idade entre 15 e 20 anos;
			// c) O percentual de pessoas com peso inferior a 40 quilos e idade acima de 15 anos.

Var

	Idade, Idade60, Altura1520, Contador : Integer;
	Peso, Altura, PesoIdade, Soma1520 : Real;

Begin

	Idade := 1;
	Idade60 := 0;
	Altura1520 := 0;
	Contador := 0;
	PesoIdade := 0;
	Soma1520 := 0;

	Writeln('Registre os dados de um conjunto de pessoas:');

	While Idade <> 0 do

	Begin // Início do While

		Writeln('Digite a idade:');
		Readln(Idade);
		
		If Idade <> 0 then
		
		Begin // Início do If

			Writeln('Digite a altura em metros:');
			Writeln('Exemplo: 1.70');
			Readln(Altura);

			Writeln('Digite o peso em quilos:');
			Writeln('Exemplo: 85.5');
			Readln(Peso);

			// a) A quantidade de pessoas com idade superior a 60 anos;

			If (Idade > 60) then Idade60 := Idade60 + 1;

			// b) A média de altura das pessoas com idade entre 15 e 20 anos;

			If (Idade >= 15) and (Idade <= 20) then

			Begin

				Soma1520 := Soma1520 + Altura;
				Altura1520 := Altura1520 + 1;

			End;

			// c) O percentual de pessoas com peso inferior a 40 quilos e idade acima de 15 anos.

			If (Peso < 40) and (Idade > 15) then PesoIdade := PesoIdade + 1;

			Contador := Contador + 1;

			Writeln;

		End; // Final do If

	End; // Final do While

	Writeln;

	// a) A quantidade de pessoas com idade superior a 60 anos;
	
	If (Idade60 >= 1) then

	Writeln('A quantidade de pessoas com idade superior a 60 anos e ', Idade60)

	Else Writeln('Nao houve registro de pessoas com idade superior a 60 anos.');

	// b) A média de altura das pessoas com idade entre 15 e 20 anos;

	If (Soma1520 >= 1) then

	Writeln('A media de altura das pessoas com idade entre 15 e 20 anos e ', Soma1520 / Altura1520:1:2, ' metros.')

	Else Writeln('Nao houve registro de pessoas com idade entre 15 e 20 anos de idade.');

	// c) O percentual de pessoas com peso inferior a 40 quilos e idade acima de 15 anos.

	If (PesoIdade >= 1) then

	Writeln('O percentual de pessoas com peso inferior a 40 quilos e idade acima de 15 anos: ', (PesoIdade * 100) / Contador:1:2, ' %')

	Else Writeln('Nao houve registro de pessoas com peso inferior a 40 quilos acima de 15 anos de idade.');

End.