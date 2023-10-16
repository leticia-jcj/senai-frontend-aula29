Algoritmo "matriz-cinema"

Var
   cinema: vetor[1..10, 1..10] de caracter
   i,j, fila, poltrona: inteiro
   opcao: caracter

Inicio

   para i de 1 ate 10 faca
      para j de 1 ate 10 faca
         cinema[i,j] <- "0"
      fimpara
   fimpara

   repita
      escreval("|-------- CINE MANIA --------|")
      escreval("|---- ESCOLHA UMA OPÇÃO -----|")
      escreval("|                            |")
      escreval("|  [1]   Reservar Poltrona   |")
      escreval("|  [2]   Layout do Cinema    |")
      escreval("|  [3]   Sair                |")
      escreval("|____________________________|")
      leia(opcao)

      escolha opcao
      caso "1"
         escreval("Fila numerada de 1 a 10")
         escreva("Escolha a fila? ")
         leia(fila)
         escreval("")

         escreval("Poltrona numerada de 1 a 10")
         escreva("Escolha a poltrona? ")
         leia(poltrona)
         escreval("")

         se (cinema[fila,poltrona] = "0") entao
            cinema[fila,poltrona] <- "X"

         senao
            escreval("Poltrona ocupada! Escolha outra opção.")
            escreval("")
         fimse

      caso "2"
         para i de 1 ate 10 faca
            para j de 1 ate 10 faca
               escreva(" ",cinema[i,j]," ")
            fimpara
            escreval("")
         fimpara

         escreval("                              ")
         escreval("[            TELA            ]")
         escreval("                              ")

      fimescolha

   ate opcao = "3"

   escreval("                                        ")
   escreval("- CINE MANIA AGRADECE PELA PREFERÊNCIA -")
   escreval("                                        ")

Fimalgoritmo