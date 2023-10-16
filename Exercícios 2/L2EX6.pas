Program L2EX6;

	// Descrição do exercício:
		// Escreva um programa para determinar:
		// As formas nominais do verbo (Infinitivo, Gerúndio e Particípio)
		// Conjugue os verbos regulares da 1ª conjugação (terminados em AR) no presente do indicativo
		// Estabeleça um diálogo amigável com o usuário solicitando o verbo e informações para direcionar o processamento

Var

	Verbo, Extrair2, Extrair3, Radical  : String;
	Tamanho : Integer;

	// Verbo = Verbo regular
	// Radical = Radical do verbo
		
	// Extrair2 = Resultado da extração dos dois últimos caracteres do verbo
	// Extrair3 = Resultado da extração dos três últimos caracteres do verbo	
	
	// Tamanho = Largura do verbo em caracteres

Begin

	Writeln('Escreva um verbo regular em uma forma nominal (Infinitivo, Gerundio, Participio):');
	Readln(Verbo);

	// Os verbos regulares no Infinitivo terminam em "ar", "er" e "ir"
	// Para determinar se o verbo está no infinitivo é necessário extrair as duas últimas letras do verbo digitado pelo usuário.
	// Para extrair essas duas últimas letras é preciso saber quantos caracteres a palavra possui. 

	Tamanho := Length (Verbo);

	// Para fazer isso utilizamos "Length" que significa "largura". Ele conta o número de caracteres da variável string selecionada.
	// Exemplo:
	// Vamos supor que a variável Verbo contém a informação "Amar". O código:
	// Tamanho := Length (Verbo)
	// Retornará o resultado: 4, pois "Amar" tem 4 caracteres.

	// Agora é possível separar as duas últimas letras utilizando "Copy" que significa "copiar".

	Extrair2 := Copy(Verbo, Tamanho-1, 2);

	// O código “Copy” é utilizado da seguinte forma:
	// Copy(X, Y, Z)
	// Considere X sendo uma variável string.
	// Considere Y sendo um número inteiro (integer) que representa a posição em que essa cópia será feita
	// Considere Z sendo o número inteiro (integer) com valor inteiro de caracteres que serão copiados.
	
	// Exemplo: Considere a variável "Verbo" tendo o valor "Amar"
	// "Amar" possui 4 caracteres.
	// O 1º caractere é a letra "A", o 2º caractere é a letra "m", o 3º caractere é a letra "a" e o 4º caractere é a letra "r".

	// Considerando o código:
	// X := Copy(Verbo, 3, 2)
	// O valor de X se torna: “ar”, pois o valor copiado será:
	// X:= Copy(A variável Verbo, o caractere a partir da terceira posição, serão copiados 2 caracteres).
	
	// Outros exemplos:

	// X := Copy(Verbo, 1, 1) terá o resultado: A
	// X := Copy(Verbo, 1, 2) terá o resultado: Am
	// X := Copy(Verbo, 1, 3) terá o resultado: Ama
	// X := Copy(Verbo, 1, 4) terá o resultado: Amar

	// X := Copy(Verbo, 1, 1) terá o resultado: A
	// X := Copy(Verbo, 2, 1) terá o resultado: m
	// X := Copy(Verbo, 3, 1) terá o resultado: a
	// X := Copy(Verbo, 4, 1) terá o resultado: r

	// Para utilizarmos esse código nesse exercício precisamos saber o tamanho em caracteres do verbo que foi digitado pelo usuário.
	// Com a criação da variável “Tamanho := Length(Verbo)” é possível saber o número de caracteres.

	// Sabemos de duas coisas:
	// 1 - Temos o tamanho em caracteres por causa da variável “Tamanho := Length(Verbo)”
	// 2 - Sabemos que as duas últimas letras do verbo vão determinar se ele está no infinitivo ao terminar em “ar”, “er” ou “ir”

	// Agora precisamos copiar as duas últimas letras do verbo que foi digitado. Para isso extrairemos as duas últimas letras do verbo digitado com Copy:
	// Extrair2 := Copy(Verbo, Tamanho-1, 2)
	// Ao utilizarmos “-1” estamos subtraindo um caractere da posição em que a palavra será copiada.

	// Vamos considerar como exemplo: Verbo = Andar
	// Extrair2 := Copy(Verbo, Tamanho, 2) terá o resultado: “r”
	// Extrair2 := Copy(Verbo, Tamanho-1, 2) terá o resultado: “ar”
	// Extrair2 := Copy(Verbo, Tamanho-2, 2) terá o resultado: “da”
	
	// Utilizaremos Copy(Verbo, Tamanho-1, 2) para obtermos os dois últimos caracteres.

	Case Upcase(Extrair2) of

		 'AR' : Begin

	// Para conjugar verbos regulares terminados em “AR” é preciso separar o radical do verbo.
	// Utilizando a mesma lógica da extração das duas últimas letras da variável “Verbo” utilizaremos o código Copy.

	//  Radical := Copy(Verbo, 1, Tamanho-2)

	// O radical de um verbo é formado removendo a desinência verbal "AR", "ER" e "IR".
	// Por exemplo:
	// O radical do verbo   "amAR" é:  am
	// O radical do verbo "querER" é:  quer
	// O radical do verbo "sentIR" é:  sent
	
	// Sendo assim para conseguirmos o radical de uma palavra só precisamos remover os dois últimos caracteres da palavra.
	// Como isso será feito? É simples. Utilizamos copy e pegamos apenas a parte inicial da palavra.
	
	Radical := Copy(Verbo, 1, Tamanho-2);

        Writeln('O verbo ', Lowercase(Verbo), ' esta no infinitivo.');
        Writeln('Conjugacao do verbo no presente do indicativo:');
		
		// O código Lowercase faz a palavra (string) ficar minúscula.
		
		// Conjugacao de um verbo terminado em "AR" no presente do indicativo:
		
		// Verbo: Amar
		// Eu amo
		// Tu amas
		// Ele ama
		// Nós amamos
		// Vós ameis
		// Eles amam
		
		// Separando o radical das desinências temos:

		// Verbo: Amar
		// Eu   am   o
		// Tu   am   as
		// Ele  am   a
		// Nós  am   amos
		// Vós  am   eis
		// Eles am   am
		
		// Utilizaremos isto para escrever o código.

		Writeln('Eu '   , Lowercase(Radical), 'o');
		Writeln('Tu '   , Lowercase(Radical), 'as');
		Writeln('Ele '  , Lowercase(Radical), 'a');
		Writeln('Nós '  , Lowercase(Radical), 'amos');
		Writeln('Vos '  , Lowercase(Radical), 'eis');
		Writeln('Eles ' , Lowercase(Radical), 'am');

        End;

		 'ER' : Writeln('O verbo "', Lowercase(Verbo), '" esta no infinitivo.');
		 
		 'IR' : Writeln('O verbo "', Lowercase(Verbo), '" esta no infinitivo.');
		
	End;

	// Para sabermos se um verbo está no gerúndio precisamos saber se ele termina em "NDO".
	// Utilizando o código "Copy" podemos fazer isso da seguinte forma:
	
	Extrair3 := Copy(Verbo, Tamanho-2, 3);
	
	// Dessa vez utilizaremos Tamanho-2.
	
	Case Upcase(Extrair3) of
		
		'NDO' : Writeln('O verbo "', Lowercase(Verbo), '" esta no gerundio.');
		
	// Para saber se um verbo regular está no particípio precisamos saber se ele termina em "ADO" ou "IDO".
	// Continuaremos usando "Extrair3", pois esse código está disponibilizando as 3 últimas letras do código.

		'ADO' : Writeln('O verbo "', Lowercase(Verbo), '" esta no participio.');
		'IDO' : Writeln('O verbo "', Lowercase(Verbo), '" esta no participio.');

	End;
	
	// As condições abaixo são para:
	
	// Verificar se o verbo está no Infinitivo (Terminado em AR, ER, IR)
	// Verificar se o verbo está no Gerúndio   (Terminado em NDO)
	// Verificar se o verbo está no Particípio (Terminado em ADO e IDO)
	
	If  (Upcase(Extrair2) <> 'AR')  and (Upcase(Extrair2) <> 'ER') and (Upcase(Extrair2) <> 'IR')
	and (Upcase(Extrair3) <> 'NDO')
	and (Upcase(Extrair3) <> 'ADO') and (Upcase(Extrair3) <> 'IDO')
		
		then Writeln('A palavra digitada nao e um verbo regular em uma forma nominal. Ele nao esta no infinitivo, gerundio ou participio.');

End.