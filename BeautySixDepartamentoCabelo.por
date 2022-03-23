programa
{
	
	funcao inicio()
	{
		inteiro num, qtd, i
		real auxcabelo
		
		escreva("=============CABELO=============\n")
		escreva("[1] - Shampoo R$ 5.00\n")
		escreva("[2] - Condicionador R$ 3.00\n")
		escreva("[3] - Creme de pentear R$ 2.50\n")
		escreva("[4] - Creme de hidratação R$ 3.50\n")
		escreva("[5] - Óleo capilar R$ 4.50\n")

		para(i = 0; i < 32; i++){
			escreva("=")
		}
		 escreva("\n")

	
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */