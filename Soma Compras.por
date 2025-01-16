
programa
{	
		inclua biblioteca Util --> u
		inteiro posicao = 4, opcao
		real valor_total
		const cadeia nome_itens[] = { "Pão", "Leite" , "Queijo", "Biscoito" }
		const real preco_itens[] = { 1.99, 5.99, 7.99, 2.99 }

	funcao inicio() 
	{	
		limpa()  //limpa console
		escreva("Os itens disponiveis são: \n")
		para (inteiro i=0; i < posicao; i++)  //Mostra itens disponíveis para compra e seus respectivos preços
		{
			escreva((i+1), " ", nome_itens[i], " R$", preco_itens[i], "\n")
		}	
		calcular_valor_final()  //chama função calcular_valor_final
	}

	funcao calcular_valor_final()
	{
		real soma = 0
		inteiro quant_itens = 0
		opcao = 0
		
		escreva("Informe os itens da compra(Utilize os códigos dos itens): \n(Digite 5 para finalizar a compra..)\n")
		enquanto(opcao!=5)
		{
			leia(opcao)
			escolha(opcao)
			{
				caso 1:
				{
					soma += preco_itens[0]
					quant_itens++
					escreva(nome_itens[0] + " foi adicionado ao seu carrinho\n")
					pare
				}
				caso 2: 
				{
					soma += preco_itens[1]
					quant_itens++
					escreva(nome_itens[1] + " foi adicionado ao seu carrinho\n")
					pare
				}
				
				caso 3: 
				{
					soma += preco_itens[2]
					quant_itens++
					escreva(nome_itens[2] + " foi adicionado ao seu carrinho\n")
					pare
				}

				caso 4:
				{
					soma += preco_itens[3]
					quant_itens++
					escreva(nome_itens[3] + " foi adicionado ao seu carrinho\n")
					pare
				}
				caso 5:
				{
					pare
				}
				caso contrario: 
				{
					escreva("Código inválido, verifique a lista e tente novamente!\n")
				}
			
			}
			
		}
		se(quant_itens>=3)
		{
			valor_total = soma - (soma*0.05)
		}
		senao
		{
			valor_total = soma
		}
		escreva("O valor total da compra é R$",valor_total)
	}
		
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */