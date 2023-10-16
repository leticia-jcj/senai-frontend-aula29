algoritmo "matriz ex1"

var
   numeros: vetor[1..3 , 1..3] de inteiro
   l,c: inteiro
inicio

   para l de 1 ate 3 passo 1 faca
      para c de 1 ate 3 passo 1 faca
         escreva("Numero da posicao [",l,",",c,"]: ")
         leia(numeros[l,c])
      fimpara
   fimpara

   para l de 1 ate 3 passo 1 faca
      para c de 1 ate 3 passo 1 faca
         escreva(numeros[l,c])
      fimpara
      escreval()
   fimpara

fimalgoritmo