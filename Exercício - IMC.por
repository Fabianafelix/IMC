programa
{
	
	funcao inicio()
	{
		cadeia nome,sexo, entrevistar="s"
		inteiro idade, contador=0 
		real peso, altura, imc
		real media_idade_mulherJ=0, media_idade_mulherA=0, media_idade_mulherE=0, media_peso_mulherJ=0,media_peso_mulherA=0,media_peso_mulherE=0
		real media_altura_mulherJ=0, media_altura_mulherA=0,media_altura_mulherE=0
		real media_idade_homemJ=0, media_idade_homemA=0, media_idade_homemE=0, media_peso_homemJ=0,media_peso_homemA=0,media_peso_homemE=0
		real media_altura_homemJ=0, media_altura_homemA=0,media_altura_homemE=0

		real total_idade_mulherJ=0, total_idade_mulherA=0, total_idade_mulherE=0, total_peso_mulherJ=0,total_peso_mulherA=0,total_peso_mulherE=0
		real total_altura_mulherJ=0, total_altura_mulherA=0,total_altura_mulherE=0
		real total_idade_homemJ=0,total_idade_homemA=0, total_idade_homemE=0, total_peso_homemJ=0,total_peso_homemA=0,total_peso_homemE=0
		real total_altura_homemJ=0, total_altura_homemA=0,total_altura_homemE=0

		real qt_mulherJ=0, qt_mulherA=0, qt_mulherE=0
		real qt_homemJ=0, qt_homemA=0, qt_homemE=0
		real qt_mulher_entrevistada, qt_homem_entrevistado
			
		enquanto (entrevistar=="s" ou entrevistar =="S")
		
		{

		contador = contador++
		
		
		escreva ("Digite sua idade:\n")
		leia (idade)
		limpa ()

		se (idade <18)
		{
		escreva ("Você não pode participar desta pesquisa! \n\n")
		}
			
		senao 
		{
		escreva ("Digite seu nome: \n")
		leia (nome)

		escreva ("Digite seu peso:\n")
		leia (peso)

		escreva ("Digite sua altura:\n")
		leia (altura)

		escreva ("Digite seu gênero: F ou M \n")
		leia (sexo)

				
		imc = peso /(altura * altura)

		se (imc >= 18.5 e imc <=24.9) 
		escreva ("Seu peso está ok! \n")

		senao se (imc >= 24.9)
		escreva ("Sobrepeso! \n")

		senao se (imc < 18.5)
		escreva("Você esta abaixo do peso! \n")

		se (sexo == "F" ou sexo== "f")
		{
			se (idade >=18 e idade <=32)
		{
			qt_mulherJ = (qt_mulherJ++)
			total_idade_mulherJ =(total_idade_mulherJ + idade)
			total_peso_mulherJ = (total_peso_mulherJ + peso)
			total_altura_mulherJ = (total_altura_mulherJ + altura)
			
			media_idade_mulherJ = total_idade_mulherJ/qt_mulherJ
			media_peso_mulherJ = total_peso_mulherJ/qt_mulherJ
			media_altura_mulherJ = total_altura_mulherJ/qt_mulherJ	
		}

			senao se (idade >=33 e idade <=61)
		{
			qt_mulherA = (qt_mulherA++)
			total_idade_mulherA =(total_idade_mulherA + idade)
			total_peso_mulherA = (total_peso_mulherA + peso)
			total_altura_mulherA = (total_altura_mulherA + altura)
			
			media_idade_mulherA = total_idade_mulherA/qt_mulherA
			media_peso_mulherA = total_peso_mulherA/qt_mulherA
			media_altura_mulherA = total_altura_mulherA/qt_mulherA
		}
			senao 
			
			qt_mulherE = (qt_mulherE++)
			total_idade_mulherE =(total_idade_mulherE + idade)
			total_peso_mulherE = (total_peso_mulherE + peso)
			total_altura_mulherE = (total_altura_mulherE + altura)
			
			media_idade_mulherE = total_idade_mulherE/qt_mulherE
			media_peso_mulherE = total_peso_mulherE/qt_mulherE
			media_altura_mulherE = total_altura_mulherE/qt_mulherE
		}
		
			se (sexo == "M" ou sexo == "m")
		{
				se (idade >=18 e idade <=32)
		{
				qt_homemJ = (qt_homemJ++)
				total_idade_homemJ =(total_idade_homemJ + idade)
				total_peso_homemJ = (total_peso_homemJ + peso)
				total_altura_homemJ= (total_altura_homemJ + altura)

				media_idade_homemJ = total_idade_homemJ/qt_homemJ
				media_peso_homemJ = total_peso_homemJ/qt_homemJ
				media_altura_homemJ = total_altura_homemJ/qt_homemJ
				
		}
				senao se (idade >=33 e idade <=61)
		{
				qt_homemA = (qt_homemA++)
				total_idade_homemA =(total_idade_homemA + idade)
				total_peso_homemA = (total_peso_homemA + peso)
				total_altura_homemA= (total_altura_homemA + altura)

				media_idade_homemA = total_idade_homemA/qt_homemA
				media_peso_homemA = total_peso_homemA/qt_homemA
				media_altura_homemA = total_altura_homemA/qt_homemA
		}

				senao 
		{
				qt_homemE = (qt_homemE++)
				total_idade_homemE =(total_idade_homemE + idade)
				total_peso_homemE = (total_peso_homemE + peso)
				total_altura_homemE= (total_altura_homemE + altura)

				media_idade_homemE = total_idade_homemE/qt_homemE
				media_peso_homemE = total_peso_homemE/qt_homemE
				media_altura_homemE = total_altura_homemE/qt_homemE
		}
									
		}

			
		}	

		escreva ("Deseja responder novamente? S ou N \n")
		leia (entrevistar)	
		limpa()
		}


		qt_mulher_entrevistada = (qt_mulherJ + qt_mulherA + qt_mulherE)
		qt_homem_entrevistado = (qt_homemJ + qt_homemA + qt_homemE)
		

		escreva ("Quantidade de Entrevistados: ", contador, "\n\n")


		escreva ("Quantidade de Mulheres Entrevistadas: ", qt_mulher_entrevistada, "\n")
		escreva ("\nMédia Idade Mulher Jovem: ", media_idade_mulherJ)
		escreva ("\nMédia Peso Mulher Jovem:", media_peso_mulherJ)
		escreva ("\nMédia Altura Mulher Jovem:", media_altura_mulherJ, "\n\n")

	
		escreva ("\nMédia Idade Mulher Adulta: ", media_idade_mulherA)
		escreva ("\nMédia Peso Mulher Adulta:", media_peso_mulherA)
		escreva ("\nMédia Altura Mulher Adulta:", media_altura_mulherA, "\n\n")

		escreva ("\nMédia Idade Mulher Expert: ", media_idade_mulherE)
		escreva ("\nMédia Peso Mulher Expert:", media_peso_mulherE)
		escreva ("\nMédia Altura Mulher Expert:", media_altura_mulherE, "\n\n")




		escreva ("Quantidade de Homens Entrevistados: ", qt_homem_entrevistado, "\n")
		escreva ("\nMédia Idade Homem Jovem: ", media_idade_homemJ)
		escreva ("\nMédia Peso Homem Jovem:", media_peso_homemJ)
		escreva ("\nMédia Altura Homem Jovem:", media_altura_homemJ, "\n\n")

		escreva ("\nMédia Idade Homem Adulto: ", media_idade_homemA)
		escreva ("\nMédia Peso Homem Adulto:", media_peso_homemA)
		escreva ("\nMédia Altura Homem Adulto:", media_altura_homemA, "\n\n")

		escreva ("\nMédia Idade Homem Expert: ", media_idade_homemE)
		escreva ("\nMédia Peso Homem Expert:", media_peso_homemE)
		escreva ("\nMédia Altura Homem Expert:", media_altura_homemE, "\n\n")
	}


}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1615; 
 * @PONTOS-DE-PARADA = 81, 74;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */