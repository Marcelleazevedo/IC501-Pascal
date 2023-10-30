Program L5EX2;

	// Descrição do exercício:
		// Leia um número inteiro menor do que 10 e imprima todos os seus múltiplos dentro do
		// intervalo [1, 100], em ordem decrescente. Ex:
		// num = 8
		// Múltiplos = 88, 80, 72, 64, 56, 48, 40, 32, 24, 16, 8, 1
			
Var

	Num, I : Integer;
	
Begin

	Writeln('Digite um numero positivo menor que 10: ');
	Readln(Num);
	
	For I := 100 downto 1 do

	Begin

	If (I Mod Num = 0) then	Write(I, ' ');

	End;
	
End.