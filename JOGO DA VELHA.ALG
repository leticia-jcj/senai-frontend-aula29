algoritmo "jogo da velha"
var
   jogoV: vetor[1..3, 1..3] de caractere
   l,c,i: inteiro
   acabou:logico

procedimento tabuleiro()
inicio
   para l de 1 ate 3 passo 1 faca

      para c de 1 ate 3 passo 1 faca
         escreva(jogoV[l,c])
      fimpara

      escreval()

   fimpara
fimprocedimento

procedimento validaJogada()
inicio
   enquanto (jogoV[l,c] = "X") ou (jogoV[l,c] = "O") faca

      escreval("Posição já preenchida!")
      escreva("Coluna que vai marcar: ")
      leia(l)

      escreva("Linha que vai marcar: ")
      leia(c)
      
   fimenquanto
fimprocedimento

funcao verificaJogada(jogada:caractere):logico
inicio
   se(jogoV[1,1] = jogada) e (jogoV[1,2]= jogada) e (jogoV[1,3] = jogada)entao

      retorne verdadeiro

   senao
      se(jogoV[2,1] = jogada) e (jogoV[2,2] = jogada) e (jogoV[2,3] = jogada) entao
         retorne verdadeiro

      senao
         se (jogoV[3,1] = jogada) e (jogoV[3,2] = jogada) e (jogoV[3,3] = jogada) entao
            retorne verdadeiro

         senao
            se(jogoV[1,1] = jogada) e (jogoV[2,1] = jogada) e (jogoV[3,1] = jogada) entao
               retorne verdadeiro

            senao

               se(jogoV[1,2] = jogada) e (jogoV[2,2] = jogada) e (jogoV[3,2] = jogada) entao
                  retorne verdadeiro

               senao
                  se(jogoV[1,3] = jogada) e (jogoV[2,3] = jogada) e (jogoV[3,3] = jogada) entao
                     retorne verdadeiro

                  senao
                     se(jogoV[1,1] = jogada) e (jogoV[2,2] = jogada) e (jogoV[3,3] = jogada) entao
                      retorne verdadeiro

                     senao
                        se(jogoV[1,3] = jogada) e (jogoV[2,2] = jogada) e (jogoV[3,1] = jogada) entao
                           retorne verdadeiro

                        senao
                           retorne falso
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimfuncao

inicio

   para l de 1 ate 3 passo 1 faca
   
      para c de 1 ate 3 passo 1 faca
         jogoV[l,c]<- " #"
      fimpara

   fimpara

   i<- 1
   acabou <- falso

   enquanto (acabou <> verdadeiro ) faca

      tabuleiro()

      escreval("Jogador 1")
      escreva("Linha que vai marcar: ")
      leia(l)

      escreva("Coluna que vai marcar: ")
      leia(c)

      validaJogada()
      
      jogoV[l,c]<- " X"
      acabou <- verificaJogada("X")

      se(acabou) entao
         limpatela

         escreval("Jogador 1 ganhou!")
         interrompa

      senao
         limpatela

         tabuleiro()

         escreval("Jogador 2")
         escreva("Coluna que vai marcar: ")
         leia(l)

         escreva("Linha que vai marcar: ")
         leia(c)

         validaJogada()

         jogoV[l,c]<- " O"
         acabou <- verificaJogada("O")

         tabuleiro()

         limpatela

         se(acabou) entao
            escreval("Jogador 2 ganhou!")
         fimse
      fimse
   fimenquanto
   escreval()

   tabuleiro()

fimalgoritmo