Program L1BEX7;

	// Descrição do exercício:
		// Faça um programa que leia três números inteiros
		// calcule e escreva a soma, o produto e a média dos números lidos.
		// Ao final, imprima os números em ordem decrescente.

Var

	Num1, Num2, Num3, Soma, Produto, Media: Integer;

	// Num1 = Primeiro número - Num2 = Segundo número
	// Num3 = Terceiro número - Soma = Soma dos números
	// Produto = Produto dos números - Media = Média dos números
	
Begin
	
	Writeln('Digite 3 numeros inteiros');
	Writeln('Digite o primeiro numero:');
	Readln(Num1);
	
	Writeln('Digite o segundo numero:');
	Readln(Num2);
	
	Writeln('Digite o terceiro numero:');
	Readln(Num3);

	Soma := Num1 + Num2 + Num3;
	Produto := Num1*Num2*Num3;
	Media := Soma Div 3;
	
	Writeln('Soma dos numeros: ', Soma, '. Produto dos numeros: ', Produto, '. Media dos numeros: ', Media, '.' );
	Writeln('Numeros em ordem decrescente:');

	// A sintaxe dos comandos "If", "Then", "Else" pode ser entendida da seguinte forma:
		
		// Se       CONDIÇÃO for positiva  então 		 X será feito  Do contrário          Y será feito
		// Se (If)  CONDIÇÃO for positiva  então (Then)  X será feito  Do contrário  (Else)  Y será feito
	
	// Utilizando essa cadeia de comandos você consegue criar uma resposta para:
	// UMA Condição positiva com dois possíveis resultados. Um resultado caso a condição seja positiva e outro resultado caso a condição seja negativa. 
	
	// Mas o que acontece se você tiver mais de uma possível condição?
	// Nesse caso será necessário ter mais condições.
	
	// Vamos pensar no exercício acima:
	// Se você quer um código que coloque três números em ordem decrescente é necessário pensar em todas as possibilidades.	
	// Vamos primeiro pensar em um algoritmo que pode tornar isso realidade e depois pensar no código.
		// Considere o primeiro número sendo 1, o segundo número sendo 2 e o terceiro número sendo 3.
		// 123 132 213 231 312 321
		// Existem 6 possibilidades de ordenarmos esses números em ordem decrescente, tudo vai depender do valor deles.
		
		// Se os números aparecem na ordem "321", por exemplo, na forma decrescente isso significa que:
		// 3 (Terceiro número) é maior que 2 (Segundo número) que é maior que 1 (primeiro número)
		
	// Se quisermos aplicar isso em Pascal precisamos chamar o primeiro, segundo e terceiro números de variáveis:
	// Num1 = Primeiro número - Num2 = Segundo número - Num3 = Terceiro número
	// Utilizando o exemplo acima onde a ordem aparece assim: 321 é possível aplicar isso em Pascal da seguinte forma:
	
	// Num3 > Num2 (O terceiro número é maior que o segundo número)
	// Num3 > Num1 (O terceiro número é maior que o primeiro número)
	// Num2 > Num1 (O segundo  número é maior que o primeiro número)

	// Criamos essa condição com:
	// If (Num3 > Num2) and (Num3 > Num1) and (Num2 > Num1) Then Writeln(Num3, Num2, Num1)
	
	// Porém essa única condição só considera a ordem 321 onde o terceiro número é o maior número, seguido do segundo número e o primeiro número.
	// Precisamos adicionar todas as outras condições possíveis.
	
			If      (Num1 > Num2) and (Num1 > Num3) and (Num2 > Num3) then Writeln(Num1, ',', Num2, ',', Num3)
			Else If (Num1 > Num2) and (Num1 > Num3) and (Num2 < Num3) then Writeln(Num1, ',', Num3, ',', Num2)

			Else If (Num2 > Num1) and (Num2 > Num3) and (Num1 > Num3) then Writeln(Num2, ',', Num1, ',', Num3)
			Else If (Num2 > Num1) and (Num2 > Num3) and (Num1 < Num3) then Writeln(Num2, ',', Num3, ',', Num1)

			Else If (Num3 > Num1) and (Num3 > Num2) and (Num2 > Num1) then Writeln(Num3, ',', Num2, ',', Num1)
			Else If (Num3 > Num1) and (Num3 > Num2) and (Num2 < Num1) then Writeln(Num3, ',', Num1, ',', Num2)
	
	// Os códigos acima funcionam apenas se todos os números forem diferentes.
	// Caso 2 números sejam iguais é necessário adicionar mais linhas de código.
	
	// Os dois números que são iguais são menores. Exemplo: 2, 1, 1
			Else If (Num1 = Num2) and (Num1 < Num3) then Writeln(Num3, ', ', Num1, ', ', Num2)
			Else If (Num1 = Num3) and (Num1 < Num2) then Writeln(Num2, ', ', Num1, ', ', Num3)
			Else If (Num2 = Num3) and (Num2 < Num1) then Writeln(Num1, ', ', Num2, ', ', Num3)
				
	// Os dois números que são iguais são maiores. Exemplo: 2, 2, 1
			Else If (Num1 = Num2) and (Num1 > Num3) then Writeln(Num1, ', ', Num2, ', ', Num3)
			Else If (Num1 = Num3) and (Num1 > Num2) then Writeln(Num1, ', ', Num3, ', ', Num2)
			Else If (Num2 = Num3) and (Num2 > Num1) then Writeln(Num2, ', ', Num3, ', ', Num1)
			
	// Os tres numeros sao iguais. Exemplo: 1, 1, 1
	
			Else if (Num1 = Num2) and (Num2 = Num3) then Writeln(Num1, ', ', Num2, ', ', Num3);

End.