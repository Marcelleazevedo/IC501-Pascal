Program LRevisaoEX16;

	// Descrição do exercício:
		// Faça um programa que, dado um conjunto de N números
		// Determine o menor valor, o maior valor e a soma dos valores.
			
Var

	NumValores, N, Valor, MenorV, MaiorV, Soma, I : Integer;
	
Begin

    
    Writeln('O programa a seguir ira comparar os valores digitados pelo usuário.');
	Writeln('Quantos valores voce gostaria que fossem comparados?');
	Readln(NumValores);
     
	Soma := 0;
	
	For I := 1 to NumValores do
		
	Begin
	
		Writeln('Digite um número inteiro:');
		Readln(N);
		
		If (I = 1) then
		
		Begin 
		
		MenorV := N;
		MaiorV := N;
		
		End;
		
		Soma := Soma + N;
		
		If      (N < MenorV) Then MenorV := N

		Else if (N > MaiorV) then MaiorV := N;

	End;	

	Writeln('O menor valor e: ', MenorV);
	Writeln('O maior valor e: ', MaiorV);
	Writeln('A soma dos valores e: ', Soma);

End.