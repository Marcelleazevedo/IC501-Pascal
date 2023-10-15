Program L1EX7;

	// Descrição do exercício:
		//Um taxista deseja calcular o rendimento de seu carro na praça.
		//Preço do combustível: 2,90
		//Escreva um programa que leia:
		//Marcação do odômetro em KM no início do dia, final do dia,
		//o valor em litros de combustível gasto e o valor total em R$ arrecadado
		//Calcule e escreva a média do consumo em KM/L e o lucro líquido do dia

Var

	Dia, Noite, Gas, Bruto, Media, Liquido: Real;

		//Dia = Marcação do odômetro no início do dia - Noite = Marcação do odômetro no final da noite
		//Gas = Valor em litros do combustível - Bruto = Valor total arrecadado em R$
		//Media = Média do consumo em KM/L - Liquido = Lucro líquido do dia

Begin

	Writeln('Qual a marcacao do odometro no inicio do dia?');
	Readln(Dia);

	Writeln('Qual a marcacao do odometro no fim do dia?');
	Readln(Noite);

	Writeln('Quantos litros de de combustivel foram gastos?');
	Readln(Gas);

	Writeln('Quanto foi arrecadado no dia?');
	Readln(Bruto);

	Media:= (Noite-Dia)/Gas;
	Liquido:= Bruto-(2.90*Gas);

	Writeln('O consumo foi de: ', Media:1:2, 'KM/L.', ' O lucro liquido foi de: ', Liquido:1:2);

End.