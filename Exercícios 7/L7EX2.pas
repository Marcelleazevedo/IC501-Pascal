Program L7EX2;

	// Descrição do exercício:
		// Leia um conjunto de nomes e imprima a primeira letra desses nomes.
		// Termine quando for lida a palavra ‘FIM’.
		// Ao final, informe o tamanho médio, em caracteres, dos nomes lidos.
			
Var

    Nome, Letra : String;
    Largura, Media : Real;
    Contador : Integer;
    
Begin
    
    Media := 0;
    Contador := 0;
    
   While Nome <> 'FIM' do
   
   Begin
   
   		Writeln('Digite um nome:');
   		Readln(Nome);
   
   		Letra := Copy(Nome, 1, 1);
   
   		Writeln(Letra);
   		
   		Largura := Length(Nome);
   		
   		Media := Media + Largura;
   		
   		Contador := Contador + 1;
   
   End;
   
   Writeln('O tamanho medio em caracteres dos nomes e: ', Media/Contador:1:1);

End.