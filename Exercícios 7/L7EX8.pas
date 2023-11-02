Program L7EX8;

	// Descrição do exercício:
		// Dado um país A, com 5.000.000 de habitantes e taxa de natalidade de 3% ao ano
		// e um país B, com 7.000.000 de habitantes e taxa de natalidade de 2% ao ano

		// Calcule e imprima o tempo necessário para que a população do país A ultrapasse a população do país B.
			
Var

	A, B : Real;
	ContadorAnos : Integer;
	
Begin

	A := 5000000;
	B := 7000000;

	ContadorAnos := 0;

	While B > A do

	Begin

		A := A + (A*0.03);
		B := B + (B*0.02);

		ContadorAnos := ContadorAnos + 1;

	End;
	
	Writeln('Apos ', ContadorAnos, ' anos, o pais A ultrapassara o pais B.');

End.