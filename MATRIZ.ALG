algoritmo "converterTempC"
var
   tempF: real
procedimento converterTempC(tempF: real)
var
   tempC: real
inicio
   tempC <- (5 * (tempF-32) / 9)
   escreva("Temperatura covertida é Cº: ",tempC)
fimprocedimento

inicio
   escreva("Temperatura em Farehnheit: ")
   leia(tempF)
   
   converterTempC(tempF)
fimalgoritmo