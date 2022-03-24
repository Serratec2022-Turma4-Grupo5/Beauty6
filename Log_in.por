programa
{
	inclua biblioteca Util
	cadeia loguin[] = {"adminMaster","Charlles", "Flavio", "Isabel", "Rosana", "Gabriel", "Vinicius"},
		   senha[] = {"adminMaster","#2019@", "valeu", "123", "#abc123#", "backend", "drunk"}, log, passw
	inteiro continuar, resp, i, sair

	
	funcao inicio()
	{
		bem_vindo_b6()	
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
			escreva("\t\t\t\t\t\t\t      --> ")leia(resp)
			limpa()
			escolha(resp)
			{
				caso 1: log_in()
				pare

				caso 2: bem_vindo_b6()
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
		inteiro acessar
		escreva("\t\t\t\t\t\t\t Olá, " + loguin[i]+"!")escreva("\n\n")	
		escreva("\t\t\t\t\t\t\tDeseja acessar a loja?\n\n")
		escreva("\t\t\t")escreva("\t\t\t\t[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		escreva("\t\t\t\t\t\t\t\t--> ")
		leia(acessar)
		limpa()
		escolha(acessar){
			caso 1: loja()
			pare
			
			caso 2: termino()
			pare
				
			caso contrario: enquanto (acessar !=1 ou acessar !=2)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				Util.aguarde(1000)
				in_log()
			}
		}
	}
	funcao termino(){
		escreva("Obrigado por acessar o sistema Beauty6!!\n")
		escreva("Volte sempre!\n\n\n")
	}
	funcao in_log_master()
	{
		escreva("\t\t\t\t\t")escreva("! VOCÊ ESTÁ LOGADO COMO ADMINISTRADOR !")escreva("\n\n")
		Util.aguarde(3500)
		escreva("\t\t\t\t\t\t")escreva("   O que deseja fazer?")escreva("\n\n")
		adm()
	}
	funcao bem_vindo_b6(){
		escreva("\t\t\t\t\t\t")escreva("Bem vindo(a) a Beauty6™!")escreva("\n\n")
		Util.aguarde(1500)
		escreva("\t\t\t\t\t")escreva("   Deseja continuar e efetuar o login?")escreva("\n\n")
		escreva("\t\t\t\t\t\t")escreva("[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		escreva("\t\t\t\t\t\t\t--> ")leia(continuar)
		escolha(continuar)
		{
			caso 1: log_in()
			pare

			caso 2: 
			limpa()
			escreva ("\n\t\t\t\t\t\tQue pena! Volte sempre!")escreva("\n")

			pare

			caso contrario: erro_bem_vindo_beauty6()
			
		}
	}
	funcao loja(){
		escreva ("Olá, " + loguin[i]+"!\n")
		escreva("[0] para sair.")
		escreva("\t\t\t\t")escreva("Qual setor você deseja acessar: Maquiagem, Perfumaria ou Cabelo? ")escreva("\n")
		Util.aguarde(1000)
		escreva("\t\t\t\t\t ")escreva("\n")
		escreva("\t\t\t\t  [1] Maquiagens")escreva("\t\t")escreva("[2] Perfumaria")escreva("\t\t [3] Tratamento de Cabelo")
		escolhaLoja()		
	}
	funcao escolhaLoja(){
		inteiro continue
		escreva("\n\n")escreva("\t\t\t\t\t\t\t       -->  ")leia(continue)
		escolha(continue)
		{
			caso 0: limpa() termino_ou_log_in() 
			pare
			
			caso 1: limpa()  Maquiagem() 
			pare

			caso 2: limpa()  Perfumaria() 
			pare

			caso 3: limpa()  Cabelo() 
			pare

			caso contrario: 
			enquanto(continue < 0 ou continue > 3)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				loja()				
			}		
		}
	}
	funcao logo_bem_vindo()
	{
	
		
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
	funcao erro_bem_vindo_beauty6()
	{
		enquanto (continuar >=3 ou continuar <=0)
		{
			limpa()
			escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
			Util.aguarde(1000)
			bem_vindo_b6()
			
		}
	}
	funcao termino_ou_log_in()
	{
		limpa()
		inteiro confirmar
		escreva("\t\t\t\t\t")escreva(" Deseja sair do sitema ou voltar para a tela de login?  ")escreva("\n\n")
		escreva("\t\t\t\t\t\t   ")escreva("[1] Sair \t\t [2] Login")escreva("\n\n")
		escreva("\t\t\t\t\t\t\t     --> ")leia(confirmar)
		escolha(confirmar)
		{
			caso 1: termino()
			pare

			caso 2: log_in()
			pare

			caso contrario: 
			enquanto (confirmar != 1 ou confirmar != 2)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				Util.aguarde(1000)
				termino_ou_log_in()
			}
		}
		
	}
	funcao Maquiagem(){
		inteiro num, qtd, j
		real auxmaquiagem, total= 0.0
		logico bool = verdadeiro
		caracter esc

		limpa()
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("=========MAQUIAGEM==========\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] - Corretivo R$ 5.00\n")
		escreva("\t\t\t\t\t")escreva("[2] - Base R$ 3.00\n")
		escreva("\t\t\t\t\t")escreva("[3] - Batom R$ 2.50\n")
		escreva("\t\t\t\t\t")escreva("[4] - Rímel R$ 3.50\n")
		escreva("\t\t\t\t\t")escreva("[5] - Lápis de olho R$ 4.50\n")
		escreva("\t\t\t\t\t")
		para(j = 0; j < 28; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){

		escreva("\t\t\t\t\t")escreva("Entre com o número do item: ")
		leia(num)
			
		escolha(num){
		
		caso 0: termino_ou_log_in()
		pare
		
		caso 1:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxmaquiagem = (qtd * 5.00)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 2:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxmaquiagem = (qtd * 3.00)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 3:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxmaquiagem = (qtd * 2.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 4:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxmaquiagem = (qtd * 3.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso 5:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxmaquiagem = (qtd * 4.50)
             escreva("Total da compra: ", total+=auxmaquiagem)
          pare
          caso contrario:
          enquanto (num < 0 ou num >5)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				Util.aguarde(1000)
				Maquiagem()
				
			}
            
		}
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não")escreva("\t --> ")leia(esc)
		
		se(esc=='N' ou esc=='n'){
			bool = falso
			}
		}
	}
	funcao Cabelo(){
		inteiro num, qtd, j
		real auxcabelo, total= 0.0
		logico bool = verdadeiro
		caracter esc

		limpa()
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("=============CABELO=============\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] - Shampoo R$ 5.00\n")
		escreva("\t\t\t\t\t")escreva("[2] - Condicionador R$ 3.00\n")
		escreva("\t\t\t\t\t")escreva("[3] - Creme de pentear R$ 2.50\n")
		escreva("\t\t\t\t\t")escreva("[4] - Creme de hidratação R$ 3.50\n")
		escreva("\t\t\t\t\t")escreva("[5] - Óleo capilar R$ 4.50\n")
		escreva("\t\t\t\t\t")
		
		para(j = 0; j < 32; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){
		escreva("\t\t\t\t\t")escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxcabelo = (qtd * 5.00)
             escreva("Total da compra: ", total +=auxcabelo)
          pare
          caso 2:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxcabelo = (qtd * 3.00)
             escreva("Total da compra: ", total +=auxcabelo)
          pare
          caso 3:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxcabelo = (qtd * 2.50)
             escreva("Total da compra: ", total +=auxcabelo)
          pare
          caso 4:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxcabelo = (qtd * 3.50)
             escreva("Total da compra: ", total +=auxcabelo)
          pare
          caso 5:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxcabelo = (qtd * 4.50)
             escreva("Total da compra: ", total +=auxcabelo)
          pare
          caso contrario:
                             enquanto (num < 0 ou num >5)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				Util.aguarde(1000)
				Cabelo()
				
			}
		 }
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não")escreva("\t --> ")leia(esc)
		se(esc=='N'){
			bool = falso
			}
		
		}
	}
	funcao Perfumaria(){
		inteiro num, qtd, j
		real auxperfumaria, total=0.0
		logico bool = verdadeiro
		caracter esc

		limpa()
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("==========PERFUMARIA==========\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] - Sabonete R$ 5.00\n")
		escreva("\t\t\t\t\t")escreva("[2] - Desodorante R$ 3.00\n")
		escreva("\t\t\t\t\t")escreva("[3] - Hidratante R$ 2.50\n")
		escreva("\t\t\t\t\t")escreva("[4] - Sabonete líquido R$ 3.50\n")
		escreva("\t\t\t\t\t")escreva("[5] - Perfume R$ 4.50\n")
		escreva("\t\t\t\t\t")
		
		para(j = 0; j < 30; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){
			
		
		escreva("\t\t\t\t\t")escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxperfumaria = (qtd * 5.00)
             escreva("Total da compra: ", total +=auxperfumaria)
          pare
          caso 2:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxperfumaria = (qtd * 3.00)
             escreva("Total da compra: ", total +=auxperfumaria)
          pare
          caso 3:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxperfumaria = (qtd * 2.50)
             escreva("Total da compra: ", total +=auxperfumaria)
          pare
          caso 4:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxperfumaria = (qtd * 3.50)
             escreva("Total da compra: ", total +=auxperfumaria)
          pare
          caso 5:
		   escreva("\t\t\t\t\t")escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             escreva("\t\t\t\t\t")auxperfumaria = (qtd * 4.50)
             escreva("Total da compra: ", total +=auxperfumaria)
          pare
          caso contrario:
          enquanto (num < 0 ou num >5)
			{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")escreva("\n\n")
				Util.aguarde(1000)
				Perfumaria()				
			}
		 }
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")escreva("\n")
		escreva("[S] Sim 	[N] Não")escreva("\t --> ")leia(esc)
		se(esc=='N'){
			bool = falso
		}
	 }
	}

}


	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 234; 
 * @DOBRAMENTO-CODIGO = [8, 12, 34, 57, 83, 87, 94, 115, 124, 150, 155, 178, 176, 187, 213, 291, 364];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {auxmaquiagem, 216, 7, 12}-{auxcabelo, 294, 7, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */