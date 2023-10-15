Program L1BEX12;

	// Descrição do exercício:
		// Faça um programa que calcule as raízes de uma equação do segundo grau, na forma
		// y = ax elevado a 2 + bx + c
		// O programa deverá pedir os valores de a, b e c e calcular o valor de y, informando ao usuário quando ocorrerem as seguintes situações:
		// Se o usuário informar o valor de a igual a zero, a equação não é do segundo grau e o programa deverá ser encerrado, após emitir uma mensagem informativa;

		//Se o delta calculado for negativo (Δ = B ao quadrado − 4AC), a equação não possui raízes reais.
			//Informe ao usuário e encerre o programa
	
		// Se o delta calculado for igual a zero a equação possui apenas uma raiz real que deverá ser impressa
		
		//Se o delta for positivo, a equação possui duas raiz reais que deverão ser calculadas
			//(X = −B ± √Δ) / 2A
			
Var

	A, B, C, X1, X2, Delta : Real;
	
	// X1 = −B + √Δ) / 2A
	// X2 = −B - √Δ) / 2A

Begin

	Writeln('Esse programa ira fazer o calculo de uma equacao do segundo grau.');
	
	Writeln('Digite o valor de A:');
	Readln(A);
	
	Writeln('Digite o valor de B:');
	Readln(B);

	Writeln('Digite o valor de C:');
	Readln(C);

	Delta := Sqr(B)-4*A*C;
		
	If (A = 0) Then Writeln('O valor de A e igual a ', A:1:1, ' . Essa nao e uma equacao de segundo grau.')
	
	Else If (Delta < 0)
		Then Writeln('O valor de Delta e ', Delta:1:2, '. Ele e negativo. A equacao nao possui raizes reais.')
	
	Else If (Delta = 0)
		Then Begin

				Writeln('O valor de Delta e ', Delta:1:2, '. A equacao possui apenas uma raiz real.');

				X1 := -B / (2*A);
				
				Writeln('O valor de X e: ', X1:1:2);
				
			End
			
	Else If (Delta > 0)
		Then Begin 
				
				X1 := (-B + Sqrt(Delta)) / (2*A);
	
				X2 := (-B - Sqrt(Delta)) / (2*A);
				
				Writeln('O valor de Delta e ', Delta:1:2, '. A equacao possui duas raizes reais.');
				Writeln('X possui dois valores:');
				Writeln('O primeiro valor de X e: ', X1:1:2);
				Writeln('O segundo valor de X e: ', X2:1:2);
		
			 End;
End.