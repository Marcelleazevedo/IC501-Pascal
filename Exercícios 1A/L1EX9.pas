Program L1EX9;

	// Descrição do exercício:
		//Entrar com a data no formato: DDMMAA (Inteiro)
		//Imprima nessa formatação: DD/MM/AAAA
		//Dica: Use Div e Mod

Var

	Data, Dia, Mes, Ano, X, Seculo: Longint;
	
	// "Integer" representa um número inteiro de range muito baixo para ser usado aqui
	// Integer vai de -32.768 até +32.767. Longint vai de -2.147.483.648 até +2.147.483.647.
	
Begin
	
	Writeln('Escolha um seculo:');
	Writeln('Digite "20" para escolher o século 20:');
	Writeln('Digite "21" para escolher o século 21:');
	Writeln('(Digite sem as aspas)');
	Readln(Seculo);
	
	
	If Seculo = 21 Then
						Begin
	
						Writeln('Digite uma data entre 01/01/2000 e 31/12/2099');
						Writeln('Utilize o formato: DDMMAA:');
						Readln(Data);
						
						End
						
	// Nesse exercício o comando Begin está iniciando um bloco de comandos.
	// Ao utilizar o comando If uma condição é criada. Se a condição for atendida ela inicia uma ação após "Then".
		// Porém, o que acontece caso você queira adicionar mais de um comando?
		
		// No exemplo acima é possível ver que após "Then" os seguintes comandos apareceriam:
		// Writeln, Writeln e Readln
		// Para adicionar todos esses comandos é necessário deixá-los dentro de "Begin" e "End".

					Else
						Begin
					
						Writeln('Digite uma data entre 01/01/1900 e 31/12/1999');
						Writeln('Utilize o formato: DDMMAA:');
						Readln(Data);
						
						End;

	// DDMMAA são 6 algarismos 100.000

	Dia:= Data Div 10000;
	
	// No código acima o comando Div divide a data por 10.000 e trata o resultado como um número inteiro.
	// Exemplo de uma divisão comum com "/": 123456/10000 = 12,3456
	// Exemplo de uma divisão com DIV: 123456 Div 10000 = 12
	// Por ser um número inteiro o resultado de DIV descarta os valores depois da vírgula.

	X:= Data Mod 10000;
	
	// No código acima, o comando Mod está dividindo a variável DIA por 10.000
	// e está apresentando apenas o resto como resultado.
	// Exemplo de uma divisão com MOD: 123456/10000 = 3456 (Ele apresentará apenas o resto dessa divisão como resultado)
	// Ele também está apresentando o RESTO dessa divisão como um número inteiro.
		// Se o valor sendo dividido por 10.000 fosse 120345 o resto seria: 345
		// O "0" inicial de "0345" não é apresentado.
	
	Mes:= X Div 100;
	
	Ano:= Data Mod 100;

	If Seculo = 21 Then
						Begin
								if Ano = 0 then writeln('Data: ', Dia, '/', Mes, '/200', Ano)
								else Writeln(Dia,'/',Mes,'/20',Ano);
						End
						
					Else	
					
						Begin
								if Ano = 0 then writeln('Data: ', Dia, '/', Mes, '/190', Ano)
								else Writeln(Dia,'/',Mes,'/19',Ano);
						End;
						
End.