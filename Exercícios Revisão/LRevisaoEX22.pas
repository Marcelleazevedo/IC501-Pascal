Program LRevisaoEX22;

	// Descrição do exercício:
		// Uma academia deseja fazer um senso entre seus clientes para descobrir:
		// O mais alto, o mais baixo, a mais gordo e o mais magro
		
		// Para isto você deve fazer um programa que pergunte a cada um dos N clientes da academia:
		// Seu código, sua altura e seu peso.
		
		// Ao encerrar o programa também deverão ser informados:
		// Os códigos e valores do cliente mais alto, do mais baixo, do mais gordo e do mais magro
		// Além da média das alturas e dos pesos dos clientes
	
Var

	N, I, Codigo, CAlto, CBaixo, CGordo, CMagro : Integer;
	Altura, Peso, MaisAlto, MenosAlto, MaisGordo, MenosGordo, MediaAltura, MediaPeso, TotalAltura, TotalPeso : Real;

Begin

	Writeln('Quantos clientes serão avaliados pelo programa?');
	Readln(N);
	
	MaisAlto := 0;
	MaisGordo := 0;
	
	TotalAltura := 0;
	TotalPeso := 0;
	
	For I:=1 to N do

	Begin
	
	Writeln('Informacoes do ', I, 'o Cliente:');

	Writeln('Qual o seu codigo de cliente da academia?');
	Writeln('Seu codigo e um numero inteiro de 4 caracteres. Exemplo: 0001:');
	Readln(Codigo);
	
	Writeln('Qual a sua altura em metros?');
	Writeln('Exemplo: 1.70');
	Readln(Altura);
	
	
	Writeln('Qual o seu peso em quilos?');
	Writeln('Exemplo: 65.15');
	Readln(Peso);

	TotalAltura := TotalAltura + Altura;
	TotalPeso := TotalPeso + Peso;
	
	If (I = 1) then              Begin MenosAlto := Altura; CBaixo := Codigo; End; 
	If (I = 1) then              Begin MenosGordo := Peso; CMagro :=  Codigo; End;

	If (Altura > MaisAlto)  then Begin Maisalto  := Altura; CAlto  := Codigo; End;
	If (Altura < MenosAlto) then Begin MenosAlto := Altura; CBaixo := Codigo; End;
	
	If   (Peso > MaisGordo) then Begin MaisGordo := Peso; CGordo   := Codigo; End;
	If   (Peso > MaisGordo) then Begin MaisGordo := Peso; CMagro   := Codigo; End;
	
	End;
	
	MediaAltura := TotalAltura / N;
	MediaPeso := TotalPeso / N;
		
	Writeln('Informacoes sobre o cliente mais alto:');
	Writeln('Codigo do cliente: ', CAlto);
	Writeln('Altura do cliente: ', MaisAlto:1:2);
	
	Writeln;
	
	Writeln('Informacoes sobre o cliente mais baixo:');
	Writeln('Codigo do cliente: ', CBaixo);
	Writeln('Altura do cliente: ', MenosAlto:1:2);

	Writeln;

	Writeln('Informacoes sobre o cliente mais gordo:');
	Writeln('Codigo do cliente: ', CGordo);
	Writeln('Peso do cliente: ', MaisGordo:1:2);

	Writeln;

	Writeln('Informacoes sobre o cliente mais magro:');
	Writeln('Codigo do cliente: ', CMagro);
	Writeln('Peso do cliente: ', MenosGordo:1:2);

	Writeln;

	Writeln('Media da altura dos clientes: ', MediaAltura:1:2);
	Writeln('Media do peso dos clientes: ',   MediaPeso:1:2);

End.

