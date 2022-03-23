programa
{
	
	funcao inicio()
	{
		inteiro num, qtd, i
		real auxperfumaria
		
		escreva("==========PERFUMARIA==========\n")
		escreva("[1] - Sabonete R$ 5.00\n")
		escreva("[2] - Desodorante R$ 3.00\n")
		escreva("[3] - Hidratante R$ 2.50\n")
		escreva("[4] - Sabonete líquido R$ 3.50\n")
		escreva("[5] - Perfume R$ 4.50\n")

		para(i = 0; i < 30; i++){
			escreva("=")
		}
		 escreva("\n")

	
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */