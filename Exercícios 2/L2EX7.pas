Program L2EX7;

	// Descrição do exercício:
		// Entre com um verbo e imprima uma das seguintes mensagens:
		// Verbo não está no infinitivo
 		// Verbo da 1ª conjugação
 		// Verbo da 2ª conjugação
 		// Verbo da 3ª conjugação
	
Var
	
	Verbo, Extrair2 : String;
	Tamanho : Integer;
	
	// Verbo = Verbo regular
	// Extrair2 = Resultado da extração dos dois últimos caracteres do verbo
	// Tamanho = Largura do verbo em caracteres


Begin

		Writeln('Insira um verbo no Infinitivo (terminado em "ar", "er" ou "ir"):');	
		Readln(Verbo);
		
		Tamanho := Length(Verbo);
		
		Extrair2 := Copy(Verbo, Tamanho-1, 2);

		Case Upcase(Extrair2) of
			
			'AR' : Writeln('O verbo "', Lowercase(Verbo), '" pertence a primeira conjugacao.');
			
			'ER' : Writeln('O verbo "', Lowercase(Verbo), '" pertence a segunda conjugacao.');
			
			'IR' : Writeln('O verbo "', Lowercase(Verbo), '" pertence a terceira conjugacao.');
			
		Else
			
			Writeln('A palavra: "', Lowercase(Verbo), '" nao e um verbo no infinitivo. Ele não termina em "ar", "er" ou "ir".');

	End;
End.

