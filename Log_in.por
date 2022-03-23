programa
{
	inclua biblioteca Util
	cadeia loguin[] = {"adminMaster","admin1", "admin2", "admin3", "admin4", "admin5", "admin6"},
		   senha[] = {"adminMaster","admin1", "admin2", "admin3", "admin4", "admin5", "admin6"}, log, passw

	cadeia usuarios[] = {"André", "João", "Marcos"}
	inteiro continuar, resp, i

	
	
	funcao inicio()
	{
		menu()
		
	}

	funcao log_in()
	{
		limpa()
		escreva("\t\t\t\t\t\t")escreva("DIGITE SEUS DADOS PARA ENTRAR")escreva("\n\n")
		escreva("\t\t\t\t\t\t\t")escreva("Usuario : ")leia(log)
		escreva("\t\t\t\t\t\t\t")escreva("Senha   : ")leia(passw)escreva("\n\n")
		limpa()

		para ( i = 1 ; i < 7 ; i++){
		     se (loguin[i] == log e senha[i] == passw){
				in_log()
				retorne
			}
		}
		se (log == "adminMaster" e passw == "adminMaster"){
				limpa()
				in_log_master()	
				retorne
		}
		erro_log_in()	
	
	}
	funcao erro_log_in(){
			escreva("\t\t\t\t\t\t")escreva(" ! USUÁRIO OU SENHA INCORRETOS !")escreva("\n\n")
			escreva("\t\t\t\t\t\t\t")escreva("TENTAR NOVAMENTE?")escreva("\n\n")
			escreva("\t\t\t\t\t\t\t")escreva("[1]Sim")escreva("\t") escreva("     [2]Não")escreva("\n\n")
			escreva("\t\t\t\t\t\t\t\t ")leia(resp)
			limpa()
			escolha(resp)
			{
				caso 1: log_in()
				pare

				caso 2: menu()
				pare

				caso contrario: 
				enquanto (resp != 1 ou resp!=2)
				{
					limpa()
					escreva("\t\t\t\t\t")escreva("DESCULPA! NÃO ENTENDEMOS SUA RESPOSTA!")
					erro_log_in()
				}	
			}
	}
	funcao in_log()
	{
		limpa()
		escreva("Bem vindo, " + loguin[i]+"!")escreva("\n\n")	
	}

	funcao in_log_master()
	{
		escreva("\t\t\t\t\t")escreva("! VOCÊ ESTÁ LOGADO COMO ADMINISTRADOR !")escreva("\n\n")
		Util.aguarde(3500)
		escreva("\t\t\t\t\t\t")escreva("   O que deseja fazer?")escreva("\n\n")
		adm()
	}

	funcao menu(){
		escreva("\t\t\t\t\t\t")escreva("Bem vindo(a) a Beaty6!")escreva("\n\n")
		Util.aguarde(2500)
		escreva("\t\t\t\t\t")escreva("   Deseja continuar e efetuar o login?")escreva("\n\n")
		escreva("\t\t\t\t\t\t")escreva("[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		escreva("\t\t\t\t\t\t\t   ")]
		bem_vindo()
	}
	
	funcao bem_vindo()
	{
		
		
		leia(continuar)
		escolha(continuar)
		{
			caso 1: log_in()
			pare

			caso 2: // aqui poderia entrar a logo novamente 
			pare

			caso contrario:
			
		}
		
	}

	funcao adm()
	{
		inteiro opcao_adm
		
		escreva("[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
		escreva("[3] Adicionar um usuário novo;\n[4] Excluir um produto;\n")
		escreva("[5] Alterar um produto;\n[6] Adicionar um produto novo.\n")
		leia (opcao_adm)
		limpa()

		enquanto(opcao_adm <1 ou opcao_adm > 6){
			escreva("Opção inválida. Escolha uma opção de 1 a 6.\n")
			escreva("O que deseja fazer?\n\n")
			escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
			escreva("[3] Adicionar um usuário novo;\n[4] Excluir um produto;\n")
			escreva("[5] Alterar um produto;\n[6] Adicionar um produto novo.\n")
			leia (opcao_adm)
			limpa()
		}

		escolha (opcao_adm)
		{
			
			caso 1:

			pare

			caso 2:

			pare

			caso 3:

			pare

			caso 4:

			pare

			caso 5:

			pare
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @DOBRAMENTO-CODIGO = [11, 17, 39, 62, 68, 76, 85, 104];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */