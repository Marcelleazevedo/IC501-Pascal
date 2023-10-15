Program L1AEX3;

	// Descrição do exercício:
		//Efetue o cálculo de litros de combustível gastos em uma viagem
		//É necessário que o usuário forneça o tempo gasto e a velocidade média
		//Distância = Tempo*Velocidade
		//Tendo a distância é possível calcular a quantidade de litros gasta na viagem
		//Litros Usados: Distância/12
		//O algoritmo deve apresentar: Velocidade Média, Tempo Gasto na Viagem,
		//Distância Percorrida e a Quantidade de Litros Usada na Viagem.

Var

	V, T, D, L: Real;

	//V = Velocidade média - T = Tempo gasto na viagem
	//D = Distância percorrida - L = Litros de gasolina gastos

Begin

	Writeln('Quanto tempo foi gasto na viagem?');
	Readln(T);

	Writeln('Qual foi a velocidade média do veículo durante a viagem?');
	Readln(V);

	D:= T*V;
	L:=D/12;

	Writeln(D:1:2,' quilometros foram percorridos e ', L:1:2, ' litros foram gastos.');

End.
