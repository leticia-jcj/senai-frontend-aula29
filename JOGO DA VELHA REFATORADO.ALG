algoritmo "Jogo da Velha Refatorado"

var
   jogoV: vetor[1..3, 1..3] de caractere
   l, c, i: inteiro
   acabou: logico
   totalJogadas: inteiro
   jogada: caractere

procedimento tabuleiro()
inicio
   para l de 1 ate 3 passo 1 faca
      para c de 1 ate 3 passo 1 faca
         escreva(jogoV[l, c])
      fimpara
      escreval()
   fimpara
fimprocedimento

procedimento validaJogada()
inicio
   enquanto (jogoV[l, c] = "X") ou (jogoV[l, c] = "O") faca
      escreval("Posição já preenchida!")
      escreva("Coluna que vai marcar: ")
      leia(l)
      escreva("Linha que vai marcar: ")
      leia(c)
   fimenquanto
fimprocedimento

funcao verificaJogada(jogada: caractere): logico
inicio
   se (jogoV[1, 1] = jogada) e (jogoV[1, 2] = jogada) e (jogoV[1, 3] = jogada) entao
      retorne verdadeiro
   senao
      se (jogoV[2, 1] = jogada) e (jogoV[2, 2] = jogada) e (jogoV[2, 3] = jogada) entao
         retorne verdadeiro
      senao
         se (jogoV[3, 1] = jogada) e (jogoV[3, 2] = jogada) e (jogoV[3, 3] = jogada) entao
            retorne verdadeiro
         senao
            se (jogoV[1, 1] = jogada) e (jogoV[2, 1] = jogada) e (jogoV[3, 1] = jogada) entao
               retorne verdadeiro
            senao
               se (jogoV[1, 2] = jogada) e (jogoV[2, 2] = jogada) e (jogoV[3, 2] = jogada) entao
                  retorne verdadeiro
               senao
                  se (jogoV[1, 3] = jogada) e (jogoV[2, 3] = jogada) e (jogoV[3, 3] = jogada) entao
                     retorne verdadeiro
                  senao
                     se (jogoV[1, 1] = jogada) e (jogoV[2, 2] = jogada) e (jogoV[3, 3] = jogada) entao
                        retorne verdadeiro
                     senao
                        se (jogoV[1, 3] = jogada) e (jogoV[2, 2] = jogada) e (jogoV[3, 1] = jogada) entao
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
         jogoV[l, c] <- "#"
      fimpara
   fimpara

   i <- 1
   acabou <- falso
   totalJogadas <- 0

   enquanto (acabou <> verdadeiro) e (totalJogadas < 9) faca

      tabuleiro()

      escreval("Jogador ", i)
      escreva("Linha que vai marcar: ")
      leia(l)

      escreva("Coluna que vai marcar: ")
      leia(c)

      validaJogada()

      se i = 1 entao
         jogada <- "X"
      senao
         jogada <- "O"
      fimse
      
      jogoV[l, c] <- jogada
      acabou <- verificaJogada(jogada)

      se (acabou) entao
         limpatela
         tabuleiro()
         escreval("Jogador ", i, " ganhou!")

         senao
         i <- 2 - i + 1
         totalJogadas <- totalJogadas + 1
      fimse
   fimenquanto

   se (totalJogadas = 9) e (acabou = falso) entao
      limpatela
      tabuleiro()
      escreval("Deu velha!")
   fimse

   escreval()
   tabuleiro()
fimalgoritmo
