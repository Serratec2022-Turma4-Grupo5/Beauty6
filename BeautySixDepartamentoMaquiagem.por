programa
{
	
	funcao inicio()
	{
		inteiro num, qtd, i
		real auxmaquiagem
		
		escreva("=========MAQUIAGEM==========\n")
		escreva("[1] - Corretivo R$ 5.00\n")
		escreva("[2] - Base R$ 3.00\n")
		escreva("[3] - Batom R$ 2.50\n")
		escreva("[4] - Rímel R$ 3.50\n")
		escreva("[5] - Lápis de olho R$ 4.50\n")

		para(i = 0; i < 28; i++){
			escreva("=")
		}
		 escreva("\n")

	
		escreva("Entre com o número do item: ")
		leia(num)

		escolha(num){
		caso 1:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 5.00)
             escreva("Total da compra: ", auxmaquiagem)
          pare
          caso 2:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 3.00)
             escreva("Total da compra: ", auxmaquiagem)
          pare
          caso 3:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 2.50)
             escreva("Total da compra: ", auxmaquiagem)
          pare
          caso 4:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 3.50)
             escreva("Total da compra: ", auxmaquiagem)
          pare
          caso 5:
		   escreva("Entre com a quantidade do item: ")
		   leia(qtd)
             auxmaquiagem = (qtd * 4.50)
             escreva("Total da compra: ", auxmaquiagem)
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
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */