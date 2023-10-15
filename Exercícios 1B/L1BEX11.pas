Program L1BEX11;

	// Descrição do exercício:
		// Escreva um programa para ler um valor de x (real) e calcular o valor de f(x), tal que:
		// F(x) = (Raiz quadrada de X-10) / 2 se x >= 10
		// F(x) = (Raiz quadrada de X ao quadrado + 1) / 2 se x <= 4
		// F(x) = (X ao cubo) / X ao quadrado - 16 se 4 < x <10

Var

	X, FX: Real;

Begin

	Writeln('Digite o valor de X:');
	Readln(X);
	
	If (X >= 10) then FX := (Sqrt(X-10))/2
		
		Else If (X <= 4) then FX := (Sqrt(Sqr(X)+1))/2
		
		Else If (4 < X) and (x < 10) then FX := (Exp(ln(x)*3)) / (Sqr(x)-16) ;
		
	Writeln('O valor de F(x) e: ', FX:1:2);

End.