Program L1AEX1;

	// Descrição do exercício:
		// Entre com a base e a altura de um retângulo
		// Imprima a seguinte saída: Perímetro, Área, Diagonal
	
	// Fórmulas:
		// Área        A = base*altura
		// Perímetro   P = 2*(base+altura)
		// Diagonal    D = Raiz quadrada de (h ao quadrado + b ao quadrado)

Var

	// Área onde as variáveis são declaradas. Variáveis são dados que podem ser mudados durante a execução do programa.
	
	Base, Altura, Area, Perimetro, Diagonal: Real;
	
	// "Real" informa ao computador que as variáveis são números reais.
	// No exemplo acima o código "Real" torna as variáveis Base, Altura, Area, Perimetro e Diagonal em números reais.
	
Begin

	// O comando "Begin" (que significa "comece") inicia o corpo do programa e End. (com ponto final) o encerra.

	Writeln('Digite a base do retangulo:');

	// O comando "Write" (que significa "escreva") é usado para escrever mensagens ao usuário que irá usar o programa.
		// É importante usar esse comando para informar ao usuário:
		// O que ele deve fazer;
		// O resultado de cálculos;
		// O valor das variáveis e etc.
			// Quando o comando "Writeln" ("Ln" significa "Line New", do inglês: nova linha) é utilizado ele adiciona uma nova linha no código.
			// Esse comando é utilizado apenas para ajustar a formatação.
	
	Readln(Base);
	
	// O comando "Read" significa "leia". Entre parênteses está a variável "Base".
	// O comando read irá ler a informação que o usuário digitou e atribuirá o valor digitado à variável que está dentro do parênteses.
		// O comando "ln" que pula linhas também pode ser usado junto do comando "Read"
		// IMPORTANTE: "Ln" Não pode ser usado sozinho para pular linhas.
		
	Writeln('Digite a altura do retangulo:');
	Readln(Altura);

	Area:= Base*Altura;
	
	// O sinal ":=" significa "atribua à".
	// Essa linha de código nesse contexto significa: Atribua à variável "Area" a informação "Base*Altura"
		// Outro exemplo: Considere o código: X:= 15
		// Ele significa: Atribua à variável "X" a informação "15".
	
	Perimetro:= 2*(Base+Altura);
	Diagonal:= sqrt (Base*Base+Altura*Altura);

	// sqrt = Square Root. Essa palavra significa Raiz Quadrada em inglês
	// Esse código calcula a raiz quadrada de um número.

	Writeln('Perimetro: ', Perimetro:1:1);
	
	// Tudo que está entre '' será lido como texto.
	
	Writeln('Area: ', Area:1:1);
	Writeln('Diagonal ', Diagonal:1:1);
	
	// O comando ":1:1" modifica a forma como o número é apresentado.
	// Considere "1:1" sendo "X:Y". X é o Field Width (Largura de Campo) e Y é o Decimal Field Width (Largura de Campo Decimal).
		// Esse comando é usado para determinar a largura em caracteres.
			// X representa os números inteiros.
			// Y representa os números decimais.
		
			// IMPORTANTE: X:Y não modificam o número em si, apenas mudam a forma como ele é apresentado.
			// IMPORTANTE: X funciona normalmente com números inteiros
			// IMPORTANTE: Y NÃO FUNCIONA se a variável for inteira. Exemplo: Integer, Longint.
	
	// Exemplo: Considere a variável chamada "NUM" sendo o seguinte número Real: 321.123456.
		// Observe abaixo como os comandos modificam a forma como ele é apresentado.
			// "NUM:3:6" apresentará a variável NUM como "321.123456"
			// "NUM:3:3" apresentará a variável NUM como "321.123"
			// "NUM:3:1" apresentará a variável NUM como "321.1"
			// "NUM:3:0" apresentará a variável NUM como "321"
	
	// O que acontece se X for maior que o número de inteiros?
		// Resposta: espaços em branco irão aparecer à esquerda. O número de espaços depende de quantos caracteres faltam.
			// "NUM:4:1" apresentará a variável NUM como " 321.1" (1 espaço em branco + 321)
			// "NUM:5:1" apresentará a variável NUM como "  321.1" (2 espaços em branco + 321)

	// O que acontece se Y for maior que o número de decimais?
	// Resposta: Zeros irão aparecer.
		// "NUM:3:7" apresentará a variável NUM como "321.1234560" (123456 + 0)
		// "NUM:3:8" apresentará a variável NUM como "321.12345600" (123456 + 00)

	// O que acontece se X for menor que o número de inteiros?
		// Resposta: A parte inteira do número aparecerá normalmente. 
		// "NUM:1:1" apresentará a variável NUM como "321.1"

	// O que acontece se Y for menor que o número de decimais?
		// Resposta: A parte decimal do número será reduzida.
		// "NUM:3:0" apresentará a variável NUM como "321" (O número decimal ficou oculto)
		// "NUM:3:1" apresentará a variável NUM como "321.1"

End.

