programa
{
	inclua biblioteca Util
	cadeia loguin[] = {"adminMaster","Charlles", "Flavio", "Isabel", "Rosana", "Gabriel", "Vinicius"},
		   senha[] = {"adminMaster","#2019@", "valeu", "123", "#abc123#", "backend", "drunk"}, log, passw
	cadeia usuarios[] = {" ", " ", " "," ", " ", " ", " ", " "}
	inteiro continuar, resp, i, sair


	funcao exclusaoUsuarios(inteiro m){
		loguin[m] = " "
		senha[m] = " "
	}

	funcao adicionaUsuarios(inteiro m, cadeia string, cadeia p){
		loguin[m] = string
		senha[m] = p
	}

	funcao alteraUsuarios(inteiro m, cadeia string, cadeia p){
		loguin[m] = string
		senha[m] = p
	}

	funcao escreveUsuarios(){
		escreva(" 0\t\t1\t\t2\t\t3\t4\t\t5\t6\t7 \n")
		para(inteiro i = 0; i<100;i++){
			escreva("_")
		}
		escreva("\n")
		para(inteiro l=0;l<7;l++){
			se(l==2 ou l==4){
				escreva(loguin[l])
				escreva("\t\t")
			}senao{
			escreva(loguin[l])
			escreva("\t")
			}
		}
		escreva("\n")
		para(inteiro l=0;l<7;l++){
			se(l==1 ou l==2){
				escreva(senha[l])
				escreva("\t\t")
			}
			senao{
				escreva(senha[l])
				escreva("\t")
			}
			
		}
	}

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
			
	
	
	
    escreva("  Beauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\n\n\n")   Util.aguarde(200) 
		escreva("\t\t       ")escreva("      @@@@@@@@@@@@@@@@@@@@@@@%,                      \t       @@@@@@@@@@@@@@@@@@@ \n")  Util.aguarde(100)    
		escreva("\t\t       ")escreva("	  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@.                      @@@@@@@@@ \n")   Util.aguarde(100)    
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@@@@@@@,                 @@@@@@@ \n")  Util.aguarde(100)     
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@@@..@@@@@*           @@@@@@@ \n")   Util.aguarde(100)    
		escreva("\t\t       ")escreva("	      @@@@&*@@@@         &@@@@@@ @@@@@          @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@            @@@@@ &@@@@         @@@/%@@     \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@             .@@@@ @@@@%        @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#(@@@@        @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#*@@@@        @@@/%@@        @@@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@    @@@@#* @@@@  ,              @@@/%@@      @@@               @@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@    @@@@@ @@@@@  ,               @@@/%@@@   @@@               @@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#*@@@@          @@@@/%@@@@@@               @@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@*&@@@@           @@@@/%@@@@@              @@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@             @@@@@ @@@@             @@@@/%@@@@@           @@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@           @@@@@# @@@@*               @@@@/%@@@@@        @@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("     &@@@@&*@@@@&&&&&@@@@@@@@@% @@@@@   \t                &&&&@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@. @@@@@@*                     @@@@@@@@@/%@@@@@@@@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@                 &@@@@@@@@@                        @@@@@          @@@@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@@@@@@@@@@@@@@@@@@@@@@@@                            &@@@@@@@@@@@@@@@@@@@ \n\n\n")   Util.aguarde(100)
		//escreva("	  \t\t\t\t\t\t   BEM VNDO A BEAUTYSIX")   Util.aguarde(200)  
		Util.aguarde(1000)
		
	


		escreva("\t\t\t\t\t\t")escreva("\tBem vindo(a) a Beauty6™!")escreva("\n\n")
		Util.aguarde(1500)
		escreva("\t\t\t\t\t")escreva("\t   Deseja continuar e efetuar o login?")escreva("\n\n")
		escreva("\t\t\t\t\t\t")escreva("\t[1] Sim")escreva("\t\t")escreva("[2] Não")escreva("\n")
		escreva("\t\t\t\t\t\t\t\t--> ")leia(continuar)
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
		escreva("\t\t\t\t\t")escreva("Deseja acessar o setor de Maquiagem, Perfumaria ou Cabelo? ")escreva("\n")
		Util.aguarde(2500)
		escreva("\t\t\t\t\t")escreva(" ")escreva("\n")
		escreva("\t")escreva("\t\t\t  [1] Maquiagem")escreva("\t\t")escreva("[2] Perfumaria")escreva("\t\t [3] Cabelo")escreva("\n")
		escreva("\t\t\t\t\t\t\t   ")
		escolhaLoja()
		limpa()


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
		escreva("[3] Adicionar um usuário novo;\n")
		escreva("[4] Ver todos os usuários cadastrados;\n[5] Sair;\n")
		leia (opcao_adm)
		limpa()
		enquanto(opcao_adm!=5){
		enquanto(opcao_adm <1 ou opcao_adm > 5){
			escreva("Opção inválida. Escolha uma opção de 1 a 4.\n")
			escreva("O que deseja fazer?\n\n")
			escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
			escreva("[3] Adicionar um usuário novo;\n[4] Ver todos os usuários cadastrados;")
			escreva("\n[5] Sair;\n")
			leia (opcao_adm)
			limpa()
		}
			se(opcao_adm==1){
					//[1] Excluir um usuário existente;
					inteiro f
					
					escreveUsuarios()
					escreva("\nEscolha qual usuário deseja excluir: \n")
					leia(f)
					exclusaoUsuarios(f)
					escreveUsuarios()
					escreva("O que deseja fazer?\n\n")
					escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
					escreva("[3] Adicionar um usuário novo;\n[4] Ver todos os usuários cadastrados;")
					escreva("\n[5] Sair;\n")

					leia(opcao_adm)
					
					
			}
			se(opcao_adm==2){
					//[2] Alterar um usuário existente;
					inteiro s
					cadeia nomeAlt, senhaAlt
					
					escreveUsuarios()
					escreva("\nEscolha qual usuário deseja alterar: \n")
					leia(s)
					escreva("Para qual nome gostaria de mudar: \n")
					leia(nomeAlt)
					escreva("Qual é a senha do novo usuario: \n")
					leia(senhaAlt)
					alteraUsuarios(s, nomeAlt, senhaAlt)
					escreva("\nO que deseja fazer?\n\n")
					escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
					escreva("[3] Adicionar um usuário novo;\n[4] Ver todos os usuários cadastrados;")
					escreva("\n[5] Sair;\n")
					escreva("\n")
					leia(opcao_adm)
					
			}
			se(opcao_adm==3){
					//[3] Adicionar um usuário novo;
					inteiro z
					cadeia nomeAdd, senhaAdd
					
					escreveUsuarios()
					escreva("\nEm qual posição o usuário estará? \n")
					leia(z)
					escreva("Qual nome gostaria de adicionar: \n")
					leia(nomeAdd)
					escreva("Qual a senha do novo usuário: \n")
					leia(senhaAdd)
					adicionaUsuarios(z, nomeAdd, senhaAdd)
					escreva("\nO que deseja fazer?\n\n")
					escreva("O que deseja fazer?\n\n")
					escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
					escreva("[3] Adicionar um usuário novo;\n[4] Ver todos os usuários cadastrados;")
					escreva("\n[5] Sair;\n")
					leia(opcao_adm)
					
			}
			se(opcao_adm==4){
					//[7] Ver todos os usuários cadastrados
					escreveUsuarios()
					
					escreva("\nO que deseja fazer?\n\n")
					escreva("O que deseja fazer?\n\n")
					escreva ("\n[1] Excluir um usuário existente;\n[2] Alterar um usuário existente;\n")
					escreva("[3] Adicionar um usuário novo;\n[4] Ver todos os usuários cadastrados;")
					escreva("\n[5] Sair;\n")
					leia(opcao_adm)
			}
			
			}
			bem_vindo_b6()
			
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
	funcao Perfumaria(){
		inteiro num, qtd, j
		real auxperfumaria, total=0.0
		logico bool = verdadeiro
		caracter esc, duvida
		
		escreva("=============================PERFUMARIA======================================\n")
		escreva("\nLinha DevS Professionals para Corpo e Banho - Essências de Extratos Naturais\n\n")
		escreva("[1] Sabonete líquido Rosto e Corpo Flores do Mediterrâneo 300mL (R$ 31.99)\n")
		escreva("[2] Sabonete em barra Esfoliante Flores da Amazônia 150g (R$ 55.99)\n")
		escreva("[3] Antitranspirante Aerossol Aloe Vera 150mL (R$ 20.99)\n")
		escreva("[4] Hidratante corporal Flores do Caribe 250 mL (R$ 56.90)\n")
		escreva("[5] Body Splash Pós-Banho Lavanda da Grécia 200 mL (R$ 75.00)\n")
		para(j = 0; j < 40; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){
			
		
		escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Sabonete líquido à base de glicerina. \nPossui base vegetal, com extratos naturais do Mediterrâneo e uma fragrância duradoura e intensa.")
		   	escreva("\nQuantidade no estoque: 89")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 31.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 31.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
          pare
          caso 2:
           escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Kit com seis sabonetes em barra para todos os tipos de pele. \nLimpa, esfolia e hidrata a pele para deixar um toque sedoso ao longo do dia. \nCom extratos naturais da flores da Amazônia, a fragrância é suave e duradoura.")
		   	escreva("\nQuantidade no estoque: 74")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 55.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 55.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
          pare
          caso 3:
          escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Desodorante antitranspirante aerossol unissex sem perfume. \nHidrata as axilas com o poder do extrato de Aloe Vera. Garante proteção por até 48h do mau odor e da transpiração. \nCom ação antibacteriana.")
		   	escreva("\nQuantidade no estoque: 55")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 20.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 20.99)
               escreva("Total da compra: ", auxperfumaria)
		   }
          pare
          caso 4:
          	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		  	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Com extratos naturais do Caribe, garante uma hidratação e proteção para o corpo com ação antirresecamento para uma pele macia e perfumada.")
		   	escreva("\nQuantidade no estoque: 85")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 56.90)
               escreva("Total da compra: ", auxperfumaria)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 56.90)
               escreva("Total da compra: ", auxperfumaria)
		   }
          pare
          caso 5:
          	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		  	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Com extratos naturais do Mar Egeu, possui notas suaves de Lavanda com um perfume duradouro e relaxante.")
		   	escreva("\nQuantidade no estoque: 67")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 75.00)
               escreva("Total da compra: ", auxperfumaria)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxperfumaria = (qtd * 75.00)
               escreva("Total da compra: ", auxperfumaria)
		   }
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
		caracter esc, duvida
		escreva("========================CABELO===========================\n")
		escreva("\nLinha DevS Professionals para Cabelos - Ultra Hidronutrição para Cabelos Danificados\n")
		escreva("[1] Shampoo Óleo de Argan 500 mL (R$ 48.99)\n")
		escreva("[2] Condicionador Óleo de Argan 300 mL (R$ 28.50)\n")
		escreva("[3] Máscara de Hidratação Vitamina C 550g (R$ 62.99)\n")
		escreva("[4] Creme de Pentear Maciez e Brilho 250 mL (R$ 20.90)\n")
		escreva("[5] Óleo Capilar Argan e Coco 100 mL (R$ 34.90)\n")

		para(j = 0; j < 32; j++){
			escreva("=")
		}
		 	escreva("\n")

		enquanto(bool){
			escreva("Entre com o número do item: ")
			leia(num)

		escolha(num){
		caso 1:
			escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Shampoo para todos os tipos de cabelo. \nPromove maciez, brilho, sensação de frescor e limpeza profunda dos fios.")
		   	escreva("\nQuantidade no estoque: 100")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 48.99)
               escreva("Total da compra: ", auxcabelo)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 48.99)
               escreva("Total da compra: ", auxcabelo)
		   }
          pare
          caso 2:
		   escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Condicionador de tratamento de nutrição profunda para cabelos severamente ressecados. \nPenetra a fundo nos fios para promover maciez.")
		   	escreva("\nQuantidade no estoque: 120")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 28.50)
               escreva("Total da compra: ", auxcabelo)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 28.50)
               escreva("Total da compra: ", auxcabelo)
		   }
          pare
          caso 3:
		   	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Máscara para cabelos danificados, ressecados e tratados quimicamente. \nPromove um tratamento intensivo para nutrir e hidratar profundamente o cabelo.")
		   	escreva("\nQuantidade no estoque: 95")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 62.99)
               escreva("Total da compra: ", auxcabelo)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 62.99)
               escreva("Total da compra: ", auxcabelo)
		   }
          pare
          caso 4:
		  	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Creme de pentear para cabelos danificados ou quimicamente tratados. \nDesembaraça, protege e dê adeus ao frizz.")
		   	escreva("\nQuantidade no estoque: 69")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 20.90)
               escreva("Total da compra: ", auxcabelo)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 20.90)
               escreva("Total da compra: ", auxcabelo)
		   }
          pare
          caso 5:
          	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Óleo para todos os tipos de cabelo. \nPossui rápida absorção e fecha as cutículas capilares promovendo suavidade no toque.")
		   	escreva("\nQuantidade no estoque: 125")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 34.90)
               escreva("Total da compra: ", auxcabelo)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxcabelo = (qtd * 34.90)
               escreva("Total da compra: ", auxcabelo)
		   }
		  
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
		caracter esc, duvida
		
		escreva("=================MAQUIAGEM====================\n")
		escreva("\nLinha DevS Professionals Makeup\n")
		escreva("[1] Lápis de olho Pretão 1,5g (R$ 33.99) \n")
		escreva("[2] Pó Iluminador Ilumina Geral 10g (R$ 79.99)\n")
		escreva("[3] Rímel Extra Volume Sensacional 6g (R$ 49.99)\n")
		escreva("[4] Paleta de Sombras 6 cores Tons Pasteis 24g (R$ 99.90)\n")
		escreva("[5] Batom Líquido DevS Professionals Nude Matte 10mL (R$ 54.90)\n")

		para(j = 0; j < 28; j++){
			escreva("=")
		}
		 escreva("\n")

		enquanto(bool){

		escreva("Entre com o número do item: ")
		leia(num)
			
		escolha(num){
		caso 1:
			escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Lápis de olho preto. Possui alta pigmentação e durabilidade.")
		   	escreva("\nQuantidade no estoque: 88")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 33.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 33.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
          pare
          caso 2:
		   escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Pó iluminador mineral. Possui textura brilhante que deixa a pele linda e radiante.")
		   	escreva("\nQuantidade no estoque: 133")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 79.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 79.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
          pare
          caso 3:
		   	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Máscara para cílios preta. Alonga e aumenta o volume com fórmula de longa duração e à prova d´água.")
		   	escreva("\nQuantidade no estoque: 113")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 49.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 49.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
          pare
          caso 4:
		   	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Paleta de sombras em pó. Possui acabamentos cintilante para um look poderoso.")
		   	escreva("\nQuantidade no estoque: 111")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 99.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 99.99)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
          pare
          caso 5:
		   	escreva("Está em dúvida? Deseja conhecer mais o produto? Digite [s] Sim ou [n] Não ----> ")
		   	leia (duvida)
		   se (duvida == 's')
		   {
		   	escreva("Batom líquido com acabamento matte. Possui alta intensidade, durabilidade de até 24h e poder hidratante.")
		   	escreva("\nQuantidade no estoque: 103")
		   	escreva("\nEntre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 59.90)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
		   senao {
		   	escreva("Entre com a quantidade do item: ")
		     leia(qtd)
               auxmaquiagem = (qtd * 59.90)
               escreva("Total da compra: ", total+=auxmaquiagem)
		   }
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
  
 } 
 


	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1023; 
 * @DOBRAMENTO-CODIGO = [9, 14, 53, 57, 79, 102, 128, 132, 140, 191, 203, 229, 329, 340, 366, 498, 631];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */