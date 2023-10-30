Program LRevisaoEX11;

	// Descrição do exercício:
		// Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha igual ao nome do usuário
		// mostrando uma mensagem de erro e voltando a pedir as informações.
			
Var

	NomeUsuario, Senha : String;
	X : Integer;

Begin

	Writeln('Escolha um nome de usuario:');
	Readln(NomeUsuario);
	
	Writeln('Escolha uma senha:');
	Writeln('(Ela nao deve ser igual ao nome do usuario).');
	Readln(Senha);
	
	If (NomeUsuario = Senha) Then X := 1;
	
	While X = 1 do
	
	Begin
	
		Writeln('Erro!');
		Writeln('Sua senha nao pode ser igual ao nome de usuario!');
		Writeln('Redija uma nova senha:');
		Readln(Senha);
	
	If (Nomeusuario <> Senha) then X := 2;
	
	End;
	
	Writeln('Seu nome de usuario: ', NomeUsuario);
	Writeln('Sua senha: ', Senha);	
	
	
End.