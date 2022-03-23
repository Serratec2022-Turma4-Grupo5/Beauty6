programa
{
	inclua biblioteca Util
	cadeia loguin[] = {"adminMaster","admin1", "admin2", "admin3", "admin4", "admin5", "admin6"},
		   senha[] = {"adminMaster","admin1", "admin2", "admin3", "admin4", "admin5", "admin6"}, log, passw

	cadeia usuarios[] = {"André", "João", "Marcos"}
	inteiro continuar, resp, i

	funcao Perfumaria(){
		inteiro num, qtd, j
		real auxperfumaria, total=0.0
		logico bool = verdadeiro
		caracter esc
		
		escreva("==========PERFUMARIA==========\n")
		escreva("[1] - Sabonete R$ 5.00\n")
		escreva("[2] - Desodorante R$ 3.00\n")
		escreva("[3] - Hidratante R$ 2.50\n")
		escreva("[4] - Sabonete líquido R$ 3.50\n")
		escreva("[5] - Perfume R$ 4.50\n")

		para(j = 0; j < 30; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){
			
		
		escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxperfumaria = (qtd * 5.00)
             escreva("Total da compra: ", auxperfumaria)
          pare
          caso 2:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxperfumaria = (qtd * 3.00)
             escreva("Total da compra: ", auxperfumaria)
          pare
          caso 3:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxperfumaria = (qtd * 2.50)
             escreva("Total da compra: ", auxperfumaria)
          pare
          caso 4:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxperfumaria = (qtd * 3.50)
             escreva("Total da compra: ", auxperfumaria)
          pare
          caso 5:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxperfumaria = (qtd * 4.50)
             escreva("Total da compra: ", auxperfumaria)
          pare
          caso contrario:
                    escreva("Opção inválida")   
		 }
		escreva("\nDeseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não\n")
		leia(esc)
		se(esc=='N'){
			bool = falso
		}
	 }
	}

	funcao Cabelo(){
		inteiro num, qtd, j
		real auxcabelo, total=0
		logico bool = verdadeiro
		caracter esc
		
		escreva("=============CABELO=============\n")
		escreva("[1] - Shampoo R$ 5.00\n")
		escreva("[2] - Condicionador R$ 3.00\n")
		escreva("[3] - Creme de pentear R$ 2.50\n")
		escreva("[4] - Creme de hidratação R$ 3.50\n")
		escreva("[5] - Óleo capilar R$ 4.50\n")

		para(j = 0; j < 32; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){
		escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxcabelo = (qtd * 5.00)
             escreva("Total da compra: ", auxcabelo)
          pare
          caso 2:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxcabelo = (qtd * 3.00)
             escreva("Total da compra: ", auxcabelo)
          pare
          caso 3:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxcabelo = (qtd * 2.50)
             escreva("Total da compra: ", auxcabelo)
          pare
          caso 4:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxcabelo = (qtd * 3.50)
             escreva("Total da compra: ", auxcabelo)
          pare
          caso 5:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxcabelo = (qtd * 4.50)
             escreva("Total da compra: ", auxcabelo)
          pare
          caso contrario:
                    escreva("Opção inválida")   
		 }
		escreva("\nDeseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não\n")
		leia(esc)
		se(esc=='N'){
			bool = falso
			}
		
		}
	}

	funcao Maquiagem(){
		inteiro num, qtd, j
		real auxmaquiagem, total=0
		logico bool = verdadeiro
		caracter esc
		
		escreva("=========MAQUIAGEM==========\n")
		escreva("[1] - Corretivo R$ 5.00\n")
		escreva("[2] - Base R$ 3.00\n")
		escreva("[3] - Batom R$ 2.50\n")
		escreva("[4] - Rímel R$ 3.50\n")
		escreva("[5] - Lápis de olho R$ 4.50\n")

		para(j = 0; j < 28; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){

		escreva("Entre com o número do item: ")
		leia(num)
			
		escolha(num){
		caso 1:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 5.00)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 2:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 3.00)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 3:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 2.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 4:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 3.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 5:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 4.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso contrario:
                    escreva("Opção inválida")   
		}
		escreva("\nDeseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não\n")
		leia(esc)
		se(esc=='N' ou esc=='n'){
			bool = falso
			}
		}
	}
	
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
		escreva("\t\t\t\t\t\t\t Bem vindo, " + loguin[i]+"!")escreva("\n\n")	
		escreva("\t\t\t\t\t\t\tDeseja acessar a loja?\n\n")
		escreva("\t\t\t")escreva("\t\t\t\t[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		inteiro num
		escreva("\t\t\t\t\t\t\t\t--> ")
		leia(num)
		limpa()
		escolha(num){
			caso 1: loja()
				pare
			caso 2: termino()
				pare
			
		}
	}

	funcao termino(){
		escreva("Obrigado por acessar nosso sistema!!")
		escreva("Volte sempre")
	}

	funcao in_log_master()
	{
		escreva("\t\t\t\t\t")escreva("! VOCÊ ESTÁ LOGADO COMO ADMINISTRADOR !")escreva("\n\n")
		Util.aguarde(3500)
		escreva("\t\t\t\t\t\t")escreva("   O que deseja fazer?")escreva("\n\n")
		adm()
	}

	funcao menu(){
		escreva("\t\t\t\t\t\t")escreva("Bem vindo(a) a Beauty6™!")escreva("\n\n")
		Util.aguarde(2500)
		escreva("\t\t\t\t\t")escreva("   Deseja continuar e efetuar o login?")escreva("\n\n")
		escreva("\t\t\t\t\t\t")escreva("[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		escreva("\t\t\t\t\t\t\t   ")
		bem_vindo()
	}

	funcao loja(){
		escreva("\t\t\t\t\t")escreva("Deseja acessar os setores de Maquiagem, Perfumaria ou Cabelo? ")escreva("\n")
		Util.aguarde(2500)
		escreva("\t\t\t\t\t")escreva(" ")escreva("\n")
		escreva("\t")escreva("\t\t\t  [1] Maquiagens")escreva("\t\t")escreva("[2] Perfumaria")escreva("\t\t [3] Tratamento de Cabelo")escreva("\n")
		//escreva("\t\t\t\t\t\t\t   ")
		escolhaLoja()
	}

	funcao escolhaLoja(){
		inteiro continue
		leia(continue)
		escolha(continue)
		{
			caso 1: Maquiagem()
			pare

			caso 2: Perfumaria()
			pare

			caso 3: Cabelo()
			pare

			caso contrario: menu()
			
		}
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
	}
}

	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 6883; 
 * @DOBRAMENTO-CODIGO = [9, 236, 345];
=======
 * @POSICAO-CURSOR = 7554; 
 * @DOBRAMENTO-CODIGO = [9, 208, 214, 236, 343];
>>>>>>> e4c0884396a3c9dcc57421168a19eaaf3932a511
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */