Program L1BEX2;

	// Descrição do exercício:
		// Escreva um número e informe se ele é múltiplo de 3 e 7 ao mesmo tempo.
Var

	Num:Integer;
	
	// Num = Número que será digitado pelo usuário
	
Begin

	Writeln('Digite um numero inteiro. O programa ira informar se ele e multiplo de 3 e 7:');
	Read(Num);
	
	If (Num Mod 3 = 0) and (Num Mod 7 = 0) then Writeln('O numero ', Num, ' e multiplo de 3 e 7.')
		else Writeln('O numero ', Num, ' nao e multiplo de 3 e 7.');
		
		// "And" significa "e".
		// Esse código é utilizado junto do comando "If" para criar duas condições que:
			// ao serem verdadeiras retornam uma informação após "then"
			// ao serem falsas não retornam uma informação após "then"
			// se apenas uma for verdadeira e a outra for falsa ela não retorna uma informação após then.
				
		// A lógica por trás disso pode ser entendida da seguinte forma:
			// Considere a afirmação:
			// Se você fizer a prova e o trabalho então será aprovado.
			// Se (If) você fizer a prova (Condição 1) e (And) o trabalho (Condição 2) então (then) será aprovado.
				// Você será aprovado se fizer apenas o trabalho? Não, pois não atende à todas as condições.
				// Você será aprovado se fizer apenas a prova? Não, pois ainda não atende à todas as condições.
				// Você será aprovado se não fizer a prova e nem o trabalho? Não, pois nenhuma condição foi atendida.
				// A única forma de ser aprovado é se fizer a prova e (And) o trabalho.
				
		// Para entender melhor esse conceito é importante conhecer a tabela da verdade:
			// Tabela AND
			// False True  = False
			// True  False = False
			// False False = False
			// True  True  = True
			
			// True representa uma condição que teve seu requisito atendido.
			// False representa uma condição que NÃO teve seu requisito atendido.
				// É possível entender a tabela considerando o seguinte modelo:
				// IF False AND True  THEN False
				// IF True  AND False THEN False
				// IF False AND False THEN False
				// IF True  AND True  THEN True

End.