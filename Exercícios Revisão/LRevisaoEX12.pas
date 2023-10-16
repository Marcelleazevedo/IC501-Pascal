Program LRevisaoEX12;

	// Descrição do exercício:
		// Faça um programa que receba dois números inteiros e:
		// gere os números inteiros que estão no intervalo compreendido por eles;
		// mostre a soma dos números ímpares do intervalo.
			
Var

	Num1, Num2, Intervalo, SomaDoIntervalo : Integer;
	
Begin

	Writeln('Esse programa ira calcular os números do intervalo de dois numeros.');
	
	Writeln('Digite o primeiro numero:');
	Readln(Num1);
	
	Writeln('Digite o segundo numero:');
	Writeln('(Ele deve ser maior que o primeiro numero)');
	Readln(Num2);
	
	Writeln('O intervalo entre os numeros e: ');
	
	// O codigo abaixo cria o intervalo entre os números
	
	For Intervalo := Num1+1 to Num2-1 do
									Write(Intervalo, ' ');

	// Primeiro eu preciso considerar o algoritmo por trás desse exercício.
	// Para essa explicação considere os seguintes valores:
		
		// Num1 := 1
		// Num2 := 8
	
	// Ou seja: Num1 tem o valor 1 e Num2 tem o valor 8.
	// Os números inteiros que estão no intervalo 1 e 8 são:
	
	// 2 3 4 5 6 7
	// O número do intervalo não incluirá 1 e 8, pois 1 é o número inicial e 8 é o número final.
	
	// Considerando isso podemos pensar no seguinte:
	// Num1 é o número inicial. Num2 é o número final.
	// Utilizando o código:
	
		// For Intervalo := Num1 to Num2 do Write(Intervalo, '')
	
	// Conseguimos o seguinte resultado:
	
		// 1 2 3 4 5 6 7 8
		
	// O código For cria uma estrutura de repetição.
		// For (Para) Intervalo := (Atribua à) Num1 to (até) Num2 do (faça) Write(Intervalo, '')
	
	// Porém esse código está mostrando todos os números entre 1 e 8. Precisamos apenas dos números do intervalo.

	// For Intervalo := Num1 + 1 to Num2 - 1 do Write(Intervalo, '')
	
	// Conseguimos o seguinte resultado:
	
		// 2 3 4 5 6 7
		
		// Pois o número inicial é Num1 - 1 e o número final é Num2 - 1	
	
	// Agora eu utilizo a estrutura de repetição For para criar um loop que irá calcular os números ímpares do intervalo.
		// Primeiro eu crio uma variável para somar os intervalos ímpares e igualo ela à zero antes de começar o código.
		
		SomaDoIntervalo := 0;
		
	// O código abaixo verifica quais números são ímpares e calcula eles
	
		For Intervalo := Num1 +1 to Num2 - 1 do
		
		Begin
			 
				If Intervalo Mod 2 <> 0 Then
				
		// O código acima é usado para verificar se o número do Intervalo é ímpar
		
		// If   Intervalo   Mod 2                                <> 0             Then
		// Se   Intervalo   Divida por 2 e me apresente o resto   Diferente de 0  Então
		
		// Se a variável Intervalo for dividida por 2 e tiver um resto diferente de 0 então
		
			SomaDoIntervalo := SomaDoIntervalo + Intervalo;
			
		End;
		
		Writeln;
		Writeln;

		Writeln('A soma dos numeros impares do intervalo de ', Num1, ' até ', Num2, ' e: ', SomaDoIntervalo)

End.