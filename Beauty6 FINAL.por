programa
{	
	inclua biblioteca Util
		
	cadeia loguin[] = {"adminMaster","Charlles", "Flavio", "Isabel", "Rosana", "Gabriel", "Vinicius"},
		   senha[] = {"adminMaster","#2019@", "valeu", "123", "#abc123#", "backend", "drunk"},
	     produtos[] = {"Lápis de olho Pretão 1,5g","Pó Iluminador Ilumina Geral 10g","Rímel Extra Volume Sensacional 6g","Paleta de Sombras 6 cores Tons Pasteis 24g",
	    			    "Batom Líquido DevS Professionals Nude Matte 10mL","Shampoo Óleo de Argan 500 mL","Condicionador Óleo de Argan 300 mL","Máscara de Hidratação Vitamina C 550g ",
	    			    "Creme de Pentear Maciez e Brilho 250 mL","Óleo Capilar Argan e Coco 100 mL","Sabonete líquido Rosto e Corpo Flores do Mediterrâneo 300mL",
	    			    "Sabonete em barra Esfoliante Flores da Amazônia 150g","Antitranspirante Aerossol Aloe Vera 150mL","Hidratante corporal Flores do Caribe 250 mL","Body Splash Pós-Banho Lavanda da Grécia 200 mL"}, log, passw
	real preco[] = {33.99, 79.99, 49.99, 99.90, 54.90, 48.99, 28.50, 62.99, 20.90, 34.90, 31.99, 55.99, 20.99, 56.90, 75.00},
		total = 0.0,carrinhoV[200],carrinhoU[200]   
	cadeia usuarios[] = {" ", " ", " "," ", " ", " ", " ", " "},carrinhoN[200]
	inteiro continuar, resp, i, sair, qtd_lapis, qtd_iluminador, qtd_rimel, qtd_paleta, qtd_batom, qtd_shampoo, qtd_condicionador,
		   qtd_mascara, qtd_creme, qtd_oleo, qtd_sabon_liq, qtd_sabon_barra, qtd_anti_trans, qtd_hidra, 
		   qtd_body, total_lapis, total_iluminador, total_rimel, total_paleta, total_batom, total_shampoo, total_condicionador, total_mascara, total_body, total_creme,
		   total_oleo, total_sabon_liq, total_sabon_barra, total_anti_trans, total_hidra, qtdM,
	        estoque [] = {213, 321, 111, 94, 143, 176, 198, 154, 244, 211, 32, 421, 123, 333, 200},carrinhoQ[200],aux_qtd=0
	
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
		escreva(" 0\t\t1\t\t2\t\t3\t4\t\t5\t6\t \n")
		para(inteiro z = 0; z<100;z++){
			escreva("_")
		}
		escreva("\n")
		para(inteiro l=0;l<=6;l++){
			se(l==2 ou l==4){
				escreva(loguin[l])
				escreva("\t\t")
			}senao{
			escreva(loguin[l])
			escreva("\t")
			}
		}
		escreva("\n")
		para(inteiro l=0;l<=6;l++){
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
		logo_bem_vindo()
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
		Util.aguarde(100)
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
		escreva("\t\t\t\t\t")escreva("Deseja acessar o setor de Maquiagem, Perfumaria ou Cabelo? ")escreva("\n")
		Util.aguarde(1000)
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
			
			caso 1: limpa()  maquiagem() carrinho ()
			pare

			caso 2: limpa()  perfumaria()
			pare

			caso 3: limpa()  cabelo() 
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
				
    		escreva("  Beauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\t\tBeauty6™\n\n\n")   Util.aguarde(200) 
		escreva("\t\t       ")escreva("      @@@@@@@@@@@@@@@@@@@@@@@%,                      \t    @@@@@@@@@@@@@@ \n")  Util.aguarde(100)    
		escreva("\t\t       ")escreva("	  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@.                      @@@@@@@@@@@@@@@@@@@@@@@ \n")   Util.aguarde(100)    
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@@@@@@@,                 @@@@@@@@ \n")  Util.aguarde(100)     
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@@@..@@@@@*           @@@@@@@ \n")   Util.aguarde(100)    
		escreva("\t\t       ")escreva("	      @@@@&*@@@@         &@@@@@@ @@@@@          @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@            @@@@@ &@@@@         @@@/%@@     \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@             .@@@@ @@@@%        @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#(@@@@        @@@/%@@      \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#*@@@@        @@@/%@@        @@@@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@    @@@@#* @@@@  ,              @@@/%@@      @@@@@@@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@    @@@@@ @@@@@  ,               @@@/%@@@   @                    @@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@#*@@@@          @@@@/%@@@@@                    @@@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@              @@@@*&@@@@           @@@@/%@@@@                   @@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@             @@@@@ @@@@             @@@@/%@@@@                @@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	      @@@@&*@@@@           @@@@@# @@@@*               @@@@/%@@@             @@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("     &@@@@&*@@@@&&&&&@@@@@@@@@% @@@@@   \t                 &&&&@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@@@@@&*@@@@@@@@@@@@@@@. @@@@@@*                      @@@@@@@@@@@@@@@@\n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@                 &@@@@@@@@@                        @@              @@ \n")      Util.aguarde(100) 
		escreva("\t\t       ")escreva("	  @@@@@@@@@@@@@@@@@@@@@@@@@@@                          @@@@@@@@@@@@@@@@@@@@@ \n\n\n")   Util.aguarde(100)
		//escreva("	  \t\t\t\t\t\t   BEM VNDO A BEAUTYSIX")   Util.aguarde(200)  
		Util.aguarde(2000)
				
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
		enquanto (continuar !=1 ou continuar !=2)
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
	
	funcao perfumaria(){
		inteiro num, qtd, j, desc, volt
		real auxperfumaria
		caracter esc, duvida
		
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("=============================PERFUMARIA======================================\n")
		escreva("\n\t\t\t\t\t")escreva("Linha DevS Professionals para Corpo e Banho - Essências de Extratos Naturais\n\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] ",produtos[10]," | R$ ", preco[10],"\n")
		escreva("[9] para voltar.")escreva("\t\t\t")escreva("[2] ",produtos[11] ," | R$ ", preco[11],"\n")
		escreva("\t\t\t\t\t")escreva("[3] ",produtos[12] ," | R$ ", preco[12],"\n")
		escreva("\t\t\t\t\t")escreva("[4] ",produtos[13] ,"| R$ ", preco[13],"\n")
		escreva("\t\t\t\t\t")escreva("[5] ",produtos[14],"| R$ ", preco[14],"\n")
		escreva("\t\t\t\t\t")escreva("[6] Estou com dúvida! Desejo conhecer mais os produto!\n")
		escreva("\t\t\t\t\t")
		para(j = 0; j < 68; j++){
			escreva("=")
		}
		escreva("\n")	
		escreva("\t\t\t\t\t")escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
			escreva("\t\t\t\t\t")escreva("Temos ", estoque[5]," unidades deste produto! Entre com a quantidade do produto: ")
		     leia(qtd_sabon_liq)
               enquanto(qtd_sabon_liq > estoque[5])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxperfumaria = (qtd_sabon_liq * preco[10])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total += auxperfumaria)
			carrinhoV[aux_qtd] = auxperfumaria
               carrinhoN[aux_qtd] = produtos[10]
               carrinhoQ[aux_qtd] = qtd_sabon_liq
               carrinhoU[aux_qtd] = preco[10]
               aux_qtd++  
          pare
          caso 2:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[6]," unidades deste produto! Entre com a quantidade do item: ")
		     leia(qtd_sabon_barra)
               enquanto(qtd_sabon_barra > estoque[6])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxperfumaria = (qtd_sabon_barra * preco[11])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total += auxperfumaria)
			carrinhoV[aux_qtd] = auxperfumaria
               carrinhoN[aux_qtd] = produtos[11]
               carrinhoQ[aux_qtd] = qtd_sabon_barra
               carrinhoU[aux_qtd] = preco[11]
               aux_qtd++  
          pare
          caso 3:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[7]," unidades deste produto! Entre com a quantidade do item: ")
		     leia(qtd_anti_trans)
               enquanto(qtd_anti_trans > estoque[7])
		     {
		     	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxperfumaria = (qtd_anti_trans * preco[12])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total += auxperfumaria)
               carrinhoV[aux_qtd] = auxperfumaria
               carrinhoN[aux_qtd] = produtos[12]
               carrinhoQ[aux_qtd] = qtd_anti_trans
               carrinhoU[aux_qtd] = preco[12]
               aux_qtd++  
          pare
          caso 4:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[8]," unidades deste produto! Entre com a quantidade do item: ")
		     leia(qtd_hidra)
               enquanto(qtd_hidra > estoque[8])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxperfumaria = (qtd_hidra * preco[13])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total += auxperfumaria)
               carrinhoV[aux_qtd] = auxperfumaria
               carrinhoN[aux_qtd] = produtos[13]
               carrinhoQ[aux_qtd] = qtd_hidra
               carrinhoU[aux_qtd] = preco[13]
               aux_qtd++  
		   
          pare
          caso 5:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[9]," unidades deste produto! Entre com a quantidade do item: ")		   		
		     leia(qtd_body)
               enquanto(qtd_body > estoque[9])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxperfumaria = (qtd_body * preco[14])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total += auxperfumaria)
               carrinhoV[aux_qtd] = auxperfumaria
               carrinhoN[aux_qtd] = produtos[14]
               carrinhoQ[aux_qtd] = qtd_body
               carrinhoU[aux_qtd] = preco[14]
               aux_qtd++  
          pare
		caso 6: escreva("\t\t\t\t\t")escreva("Qual produto você gostaria de uma descrição? --> ")leia(desc)
			   escolha(desc){
			   	caso 1: limpa()escreva("Sabonete líquido à base de glicerina. Possui base vegetal, com extratos naturais do Mediterrâneo e uma fragrância duradoura e intensa.")
			   		   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   		   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

			   	caso 2: limpa()escreva("Kit com seis sabonetes em barra para todos os tipos de pele. Limpa, esfolia e hidrata a pele para deixar um toque sedoso ao longo do dia. Com extratos naturais da flores da Amazônia, a fragrância é suave e duradoura")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

			   	caso 3: limpa()escreva("Desodorante antitranspirante aerossol unissex sem perfume. Hidrata as axilas com o poder do extrato de Aloe Vera. Garante proteção por até 48h do mau odor e da transpiração. Com ação antibacteriana")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

			   	caso 4: limpa()escreva("Com extratos naturais do Caribe, garante uma hidratação e proteção para o corpo com ação antirresecamento para uma pele macia e perfumada")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

			   	caso 5: limpa()escreva("Com extratos naturais do Mar Egeu, possui notas suaves de Lavanda com um perfume duradouro e relaxante")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare
				caso 0: limpa() inicio()
				pare
			   	caso 9: perfumaria()
			   	pare
			   }
		
		pare
          caso 9: loja()
          pare
          caso contrario:
                    enquanto (num <0 e num >6 e num !=9)
                   {
                   	 	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					perfumaria()
                   }
		 }
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não, ir para o carrinho\n")
		escreva("\t\t\t\t\t\t")escreva("     --> ")
		leia(esc)
		enquanto (esc != 'S' e esc != 's' e esc != 'N' e esc != 'n')
		{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
				Util.aguarde(1000)
				loja()
		}
		se(esc=='N' ou esc=='n')
		 {
			 carrinho()
		 }
		 senao 
		 {
		 	limpa()perfumaria()
		 }
	}
	
	funcao cabelo(){
		inteiro num, qtd, j, desc, volt
		real auxcabelo
		caracter esc, duvida
		
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("========================CABELO===========================\n")
		escreva("\n\t\t\t\t\t")escreva("Linha DevS Professionals para Cabelos - Ultra Hidronutrição para Cabelos Danificados\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] ", produtos[5], " | R$ ", preco[5],"\n")
		escreva("[9] para voltar.")escreva("\t\t\t")escreva("[2] ",produtos[6]," | R$ ", preco[6],"\n")
		escreva("\t\t\t\t\t")escreva("[3] ",produtos[7]," | R$ ", preco[7],"\n")
		escreva("\t\t\t\t\t")escreva("[4] ",produtos[8]," | R$ ", preco[8],"\n")
		escreva("\t\t\t\t\t")escreva("[5] ",produtos[9]," | R$ ", preco[9],"\n")
		escreva("\t\t\t\t\t")escreva("[6] Estou com dúvida! Desejo conhecer mais os produto!\n")
		escreva("\t\t\t\t\t")
		
		para(j = 0; j < 68; j++){
			escreva("=")
		}
		 	escreva("\n")
			escreva("\t\t\t\t\t")escreva("Entre com o número do produto ou tecla de ação: ")
			leia(num)

		escolha(num){
		caso 1:
			escreva("\t\t\t\t\t")escreva("Temos ", estoque[10]," unidades deste produto! Entre com a quantidade do item: ")
		     leia(qtd_shampoo)
               enquanto(qtd_shampoo > estoque[10])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxcabelo = (qtd_shampoo * preco[5])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+= auxcabelo)
               carrinhoV[aux_qtd] = auxcabelo
               carrinhoN[aux_qtd] = produtos[5]
               carrinhoQ[aux_qtd] = qtd_shampoo
               carrinhoU[aux_qtd] = preco[5]
               aux_qtd++  
          pare
          caso 2:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[11]," unidades deste produto! Entre com a quantidade do item: ")
		     leia(qtd_condicionador)
               enquanto(qtd_condicionador > estoque[11])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxcabelo = (qtd_condicionador * preco[6])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+= auxcabelo)
               carrinhoV[aux_qtd] = auxcabelo
               carrinhoN[aux_qtd] = produtos[6]
               carrinhoQ[aux_qtd] = qtd_condicionador
               carrinhoU[aux_qtd] = preco[6]
               aux_qtd++  
          pare
          caso 3:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[12]," unidades deste produto! Entre com a quantidade do item: ")		   	
		     leia(qtd_mascara)
               enquanto(qtd_mascara > estoque[12])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxcabelo = (qtd_mascara * preco[7])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+= auxcabelo)
               carrinhoV[aux_qtd] = auxcabelo
               carrinhoN[aux_qtd] = produtos[7]
               carrinhoQ[aux_qtd] = qtd_mascara
               carrinhoU[aux_qtd] = preco[7]
               aux_qtd++  
          pare
          caso 4:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[13]," unidades deste produto! Entre com a quantidade do item: ")	  			     
		     leia(qtd_creme)
               enquanto(qtd_creme > estoque[13])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxcabelo = (qtd_creme * preco[8])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+= auxcabelo)
               carrinhoV[aux_qtd] = auxcabelo
               carrinhoN[aux_qtd] = produtos[8]
               carrinhoQ[aux_qtd] = qtd_creme
               carrinhoU[aux_qtd] = preco[8]
               aux_qtd++  
          pare
          caso 5:
          	escreva("\t\t\t\t\t")escreva("Temos ", estoque[14]," unidades deste produto! Entre com a quantidade do item: ")       	
		     leia(qtd_oleo)
               enquanto(qtd_oleo > estoque[14])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
               auxcabelo = (qtd_oleo * preco[9])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+= auxcabelo)
               carrinhoV[aux_qtd] = auxcabelo
               carrinhoN[aux_qtd] = produtos[9]
               carrinhoQ[aux_qtd] = qtd_oleo
               carrinhoU[aux_qtd] = preco[9]
               aux_qtd++  
          pare

		caso 6: escreva("\t\t\t\t\t")escreva("Qual produto você gostaria de uma descrição? --> ")leia(desc)
			   escolha(desc){
			   	caso 1: limpa() escreva("Shampoo para todos os tipos de cabelo. Promove maciez, brilho, sensação de frescor e limpeza profunda dos fios")
			   		   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   		   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	caso 2: limpa() escreva("Condicionador de tratamento de nutrição profunda para cabelos severamente ressecados. Penetra a fundo nos fios para promover maciez.")
			   		   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   		   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

			   	caso 3: limpa() escreva("Máscara para cabelos danificados, ressecados e tratados quimicamente. Promove um tratamento intensivo para nutrir e hidratar profundamente o cabelo")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }

			   	pare

			   	caso 4: limpa() escreva("Creme de pentear para cabelos danificados ou quimicamente tratados")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }

			   	pare

			   	caso 5: limpa() escreva("Óleo para todos os tipos de cabelo. Possui rápida absorção e fecha as cutículas capilares promovendo suavidade no toque.")
					   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
					   enquanto( volt != 9){
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  cabelo()
			   		   }
			   	pare

				caso 0: limpa() inicio()
				pare
				
			   	caso 9: cabelo()
			   	pare
			   }
			  
		pare
          caso 9: loja()
          pare
          caso contrario:
                    enquanto (num <0 e num >6 e num !=9)
                   {
                   	 	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					cabelo()
                   }
		 }
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não, ir para o carrinho\n")
		escreva("\t\t\t\t\t\t")escreva("     --> ")
		leia(esc)
		enquanto (esc != 'S' e esc != 's' e esc != 'N' e esc != 'n')
		{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
				Util.aguarde(1000)
				loja()
		}
		se(esc=='N' ou esc=='n')
		 {
			 carrinho()
		 }
		 senao 
		 {
		 	limpa()cabelo()
		 }
	}
	
	funcao maquiagem(){
		inteiro num, j, desc, volt
		real auxmaquiagem
		caracter esc, duvida
		
		
		escreva("Olá, " + loguin[i]+"!")escreva("\t\t\t\t")escreva("=================MAQUIAGEM====================\n")
		escreva("\n\t\t\t\t\t")escreva("Linha DevS Professionals Makeup\n")
		escreva("[0] para sair.")escreva("\t\t\t\t")escreva("[1] ", produtos[0]," | R$ ", preco[0],"\n")
		escreva("[9] para voltar.")escreva("\t\t\t")escreva("[2] " , produtos[1], " | R$ ", preco[1],"\n")
		escreva("\t\t\t\t\t")escreva("[3] " , produtos[2], " | R$ ", preco[2],"\n")
		escreva("\t\t\t\t\t")escreva("[4] " , produtos[3], " | R$ ", preco[3],"\n")
		escreva("\t\t\t\t\t")escreva("[5] ", produtos[4]," | R$ ", preco[4], "\n")
		escreva("\t\t\t\t\t")escreva("[6] Estou com dúvida! Gostaria conhecer mais os produtos! \n")
		escreva("\t\t\t\t\t")
		
		para(j = 0; j < 68; j++){
			escreva("=")
		}
		escreva("\n")
		escreva("\t\t\t\t\t")escreva("Entre com o número do produto ou tecla de ação ")
		escreva("--> ")
		leia(num)
			
		escolha(num){
		caso 1:
		   	escreva("\t\t\t\t\t")escreva("Temos ", estoque[0]," unidades deste produto! Entre com a quantidade do produto: ")	     
		     leia(qtd_lapis)
		     enquanto(qtd_lapis > estoque[0])
		     {
		     	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
		     estoque [0] = estoque[0] - qtd_lapis
               auxmaquiagem = (qtd_lapis * preco[0])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+=auxmaquiagem)	   
               carrinhoV[aux_qtd] = auxmaquiagem
               carrinhoN[aux_qtd] = produtos[0]
               carrinhoQ[aux_qtd] = qtd_lapis
               carrinhoU[aux_qtd] = preco[0]
               aux_qtd++  
          pare
          caso 2:
		   	escreva("\t\t\t\t\t")escreva("Temos ", estoque[1]," unidades deste produto! Entre com a quantidade do produto: ")		     
		     leia(qtd_iluminador)
		     enquanto(qtd_iluminador > estoque[1])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
		     estoque [1] = estoque[1] - qtd_iluminador
               auxmaquiagem = (qtd_iluminador * preco[1])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+=auxmaquiagem)
               carrinhoV[aux_qtd] = auxmaquiagem
               carrinhoN[aux_qtd] = produtos[1]
               carrinhoQ[aux_qtd] = qtd_iluminador
               carrinhoU[aux_qtd] = preco[1]
               aux_qtd++  
          pare
          caso 3:
		   	escreva("\t\t\t\t\t")escreva("Temos ", estoque[2]," unidades deste produto! Entre com a quantidade do produto: ")	     
		     leia(qtd_rimel)
		     enquanto(qtd_rimel > estoque[2])
		     {
		     		limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
		     estoque [2] = estoque[2] - qtd_rimel
               auxmaquiagem = (qtd_rimel * preco[2])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+=auxmaquiagem)
               carrinhoV[aux_qtd] = auxmaquiagem
               carrinhoN[aux_qtd] = produtos[2]
               carrinhoQ[aux_qtd] = qtd_rimel
               carrinhoU[aux_qtd] = preco[2]
               aux_qtd++  
          pare
          caso 4:
		   	escreva("\t\t\t\t\t")escreva("Temos ", estoque[3]," unidades deste produto! Entre com a quantidade do produto: ")		    
		     leia(qtd_paleta) 
		      enquanto(qtd_paleta > estoque[3])
		     {
		     	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
		     estoque [3] = estoque[3] - qtd_paleta
               auxmaquiagem = (qtd_paleta * preco[3])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+=auxmaquiagem)
               carrinhoV[aux_qtd] = auxmaquiagem
               carrinhoN[aux_qtd] = produtos[3]
               carrinhoQ[aux_qtd] = qtd_paleta
               carrinhoU[aux_qtd] = preco[3]
               aux_qtd++  
          pare
          caso 5:
		   	escreva("\t\t\t\t\t")escreva("Temos ", estoque[4]," unidades deste produto! Entre com a quantidade do produto: ")	     
		     leia(qtd_batom)
		     enquanto(qtd_batom > estoque[4])
		     {
		     	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
		     }
		     estoque [4] = estoque[4] - qtd_batom
               auxmaquiagem = (qtd_batom * preco [4])
               escreva("\t\t\t\t\t")escreva("Total da compra: ", total+=auxmaquiagem)
               carrinhoV[aux_qtd] = auxmaquiagem
               carrinhoN[aux_qtd] = produtos[4]
               carrinhoQ[aux_qtd] = qtd_batom
               carrinhoU[aux_qtd] = preco[4]
               aux_qtd++  
          pare
		caso 6: escreva("\t\t\t\t\t")escreva("Qual produto você gostaria de uma descrição? --> ")leia(desc)
			   escolha(desc)
			   {	
			   	caso 1: limpa()escreva("Lápis de olho preto. Possui alta pigmentação e durabilidade.")escreva("\n")
			   		   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   		   	enquanto(volt != 9)
			   		   	{
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  maquiagem()
			   		   	}
			   		   	se (volt == 9) 
			   		   	{
			   		   		limpa()maquiagem()
			   		   	}
			   		   
			   	pare
			   	caso 2: limpa()escreva("Pó iluminador mineral. Possui textura brilhante que deixa a pele linda e radiante.")escreva("\n")
			   		   escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   		     enquanto(volt != 9)
			   		   	{
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  maquiagem()
			   		   	}
			   		   	se (volt == 9) 
			   		   	{
			   		   		limpa()maquiagem()
			   		   	}
			   	pare
			   	caso 3: limpa()escreva("Máscara para cílios preta. Alonga e aumenta o volume com fórmula de longa duração e à prova d´água.")escreva("\n")
			   	        escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   	          enquanto(volt != 9)
			   		   	{
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  maquiagem()
			   		   	}
			   		   	se (volt == 9) 
			   		   	{
			   		   		limpa()maquiagem()
			   		   	}
			   	pare
			   	caso 4: limpa()escreva("Paleta de sombras em pó. Possui acabamentos cintilante para um look poderoso.")escreva("\n")
			   	        escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   	          enquanto(volt != 9)
			   		   	{
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  maquiagem()
			   		   	}
			   		   	se (volt == 9) 
			   		   	{
			   		   		limpa()maquiagem()
			   		   	}
			   	pare
			   	caso 5: limpa()escreva("Batom líquido com acabamento matte. Possui alta intensidade, durabilidade de até 24h e poder hidratante.")escreva("\n")
			   	        escreva("[9] Voltar")escreva("\n")escreva("--> ")leia(volt)
			   	          enquanto(volt != 9)
			   		   	{
			   		   	  limpa()escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!")
			   		   	  Util.aguarde(1500)
			   		   	  maquiagem()
			   		   	}
			   		   	se (volt == 9) 
			   		   	{
			   		   		limpa()maquiagem()
			   		   	}
			   	pare
			   }	
		pare

		caso 0: limpa() inicio()
		pare
		
          caso 9: loja()
          pare
          caso contrario:
                   enquanto (num <0 e num >6 e num !=9)
                   {
                   	 	limpa()
					escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
					Util.aguarde(1000)
					maquiagem()
                   }
		}
		escreva("\n\t\t\t\t\t")escreva("Deseja continuar comprando? Digite: ")
		escreva("[S] Sim 	[N] Não, ir para o carrinho\n")
		escreva("\t\t\t\t\t\t")escreva("     --> ")
		leia(esc)
		
		enquanto (esc != 'S' e esc != 's' e esc != 'N' e esc != 'n')
		{
				limpa()
				escreva("\t\t\t\t\t")escreva(" OPS! ALGO DEU ERRADO! TENTE NOVAMENTE!  ")
				Util.aguarde(1000)
				loja()
		}
		se(esc=='N' ou esc=='n')
		 {
			 carrinho()
		 }
		 senao 
		 {
		 	limpa()maquiagem()
		 }

	}	
 	
 	funcao carrinho()
 	{
 		inteiro saiir
 		limpa()
 		para(inteiro j = 0;j<aux_qtd;j++)
 		{
 			escreva("Produto: " +carrinhoN[j] + " | Valor Unitário: " + carrinhoU[j] + " | Quantidade: " + carrinhoQ[j] + " | |Valor Final: " + carrinhoV[j] + "\n\n")
 		}
 		escreva("Sua compra foi de: ", total)escreva("\n")
 		escreva("Deseja sair e imprimir sua nota fiscal? [1] Sair")escreva("\n")
 		escreva("-->  ")leia(saiir)
 		
 		se (saiir == 1)
 		{
 			limpa()
 			cadeia ce[]={"▒","▒","▒","▒","▒","▒","▒","▒","▒","▒"}
			para (inteiro x=0; x<10;x++){
			escreva(" Emitindo Nota Fiscal!\n\n")
			
			escreva("Aguarde! Imprimindo nota fiscal...\n")
			escreva(ce[0]+ce[1]+ce[2]+ce[3]+ce[4]+ce[5]+ce[6]+ce[7]+ce[8]+ce[9])
			ce[x]="█"
			Util.aguarde(500)
			limpa()
			
			
			}
			escreva("\n\nImpressão finalizada")
 			escreva("\t\t\t\t\t\t")escreva("Obrigado por comprar na Beauty6™!")																				escreva("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
 																																			
 																																				Util.aguarde(1000000)
 		
 			}
 	
 	}
 
 } 
 


	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 38550; 
 * @DOBRAMENTO-CODIGO = [19, 24, 29, 51, 55, 34, 63, 69, 92, 116, 143, 148, 156, 178, 191, 218, 246, 343, 341, 353, 380, 696, 703, 693, 578, 900, 779, 1008];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */