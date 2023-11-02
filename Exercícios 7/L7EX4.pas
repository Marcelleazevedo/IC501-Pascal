Program L7EX4;

	// Descrição do exercício:
		// Entre com a idade de várias pessoas  e finalize a leitura com um número negativo
		// Imprima a quantidade de pessoas que tinham mais de 21 anos
		// E a média de idade das pessoas com mais de 60.
			
Var

	Negativo, Idade, Maior21, Media60, Contador, I : Integer;
	
Begin

	Negativo := -1;
	Idade := 0;
	Maior21 := 0;
	Media60 := 0;
	Contador := 0;

	While Idade > Negativo do

	Begin // Início do While

		Writeln('Digite uma idade:');
		Readln(Idade);

		If (Idade > 21) then Maior21 := Maior21 + 1;

		If (Idade > 60) then

		Begin // Início do If

			Media60 := Media60 + Idade;
			Contador := Contador + 1;

		End; // Final do If

	End; // Final do While

	Writeln;

	If (Maior21 >= 1) then
		
			Writeln('A quantidade de pessoas com mais de 21 anos e ', Maior21)

		Else

			Writeln('Não existem registros de pessoas com mais de 21 anos nesse programa.');

	If (Contador >= 1) then
		
			Writeln('A media de pessoas com mais de 60 e: ', Media60 Div Contador)

		Else

			Writeln('Não existem registros de pessoas com mais 60 anos nesse programa.');

End.