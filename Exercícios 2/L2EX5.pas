Program L2EX5;

	// Descrição do exercício:
		// Faça um programa que lê duas notas parciais obtidas por um aluno numa disciplina
		
		// Calcule a sua média final
		// (na escola, as notas são valores inteiros, então você precisará arredondar a média calculada)
		
		// Atribua um dos conceitos possíveis, segundo a tabela abaixo:
		// Média de Aproveitamento Conceito:
		
		// a) Entre 90 e 100   A
		// b) Entre 75 e 89    B
		// c) Entre 60 e 74    C
		// d) Entre 40 e 59    D
		// e) Entre 0  e 39    E

		// Além da média final e do conceito, o programa deve mostrar:
		// “APROVADO” se o conceito for A, B ou C ou "REPROVADO" se o conceito for D ou E.
		
Var
	
	Nota1, Nota2, Media: Real;
	
	Arredondar : Integer;
	
Begin

	Writeln('Digite a primeira nota do aluno:');
	Writeln('A nota é de 0 a 100.');
	Readln(Nota1);
	
	Writeln('Digite a segunda nota do aluno:');
	Writeln('A nota é de 0 a 100.');
	Readln(Nota2);
	
	// O código abaixo calculará a média
	
	Media := (Nota1 + Nota2 ) / 2;
	
	// O código abaixo arredondará a nota do aluno.
	// A variavel "Arredondar" precisa ser declarada como um número inteiro.
	
	Arredondar := Round(Media);
	
	// Round arredonda valores reais e os transforma em inteiros.
	// Por exemplo:
	
	// X := Round(5.5);
	// Esse código dará o resultado: 6
	
	// X := Round(5.4);
	// Essa código dará o resultado: 5
	
	
	Case Arredondar of

		90..100 : Begin
				
				Writeln('A media do aluno e: ', Arredondar);
				Writeln('O aluno obteve conceito A.');
				Writeln('O aluno foi aprovado.');
		
			  End;
		
		75..89 : Begin
				
				Writeln('A media do aluno e: ', Arredondar);
				Writeln('O aluno obteve conceito B.');
				Writeln('O aluno foi aprovado.');
				
			  End;
			  
		60..74 : Begin
				
				Writeln('A media do aluno e: ', Arredondar);
				Writeln('O aluno obteve conceito C.');
				Writeln('O aluno foi aprovado.');
		
			  End;
			  
		40..59 : Begin
				
				Writeln('A media do aluno e: ', Arredondar);
				Writeln('O aluno obteve conceito D.');
				Writeln('O aluno foi reprovado.');
				
			  End; 
			  
		0..39  : Begin
				
				Writeln('A media do aluno e: ', Arredondar);
				Writeln('O aluno obteve conceito E.');
				Writeln('O aluno foi reprovado.');
		
			  End;	  
	End;
End.

