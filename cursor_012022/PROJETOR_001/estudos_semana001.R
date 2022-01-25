# entrada de dados
#cat("Qual o seu nome?")
# nome = readline(" O meu nome é :")
rm( list= ls ())
graphics.off()

install.packages("tidyverse")


library(tidyr)
library(dplyr)
source("bibliotecadefuncoes.r")
df = read.csv("grupoescot.csv")

continua = "S"
while (continua == "S") {
  numero= entra.dados()
  mostra(numero)
  continua= readline("Digite S se quiser fazer nova consulta:")
}


#COMO DEBUGAR UM PROGRAMA 

dobro = function(a)
{
  tam= length(a)
  vetor=0
  for (i in 1:tam){
    vetor[i] =  2*a[i]
  }
  return(vetor)
}

triplo= function(b)
{
  d=3*b
  return(d)
}  


# programa principal 

a=c (1,2,3)
b= 10
resposta1= dobro(a)
print(resposta1)
resposta2 = triplo(b)
print(resposta2)

#cat pode ser usado para concatenar strings
a= "Um Dois Três"
cat(a,"de Oliveira Quatro")
cat(a,"de Oliveira Quatro\n", "Cinco")
#cat(a,"de Oliveira Quatro\n")
#readline
a1 = readline ("Digite a sua opção:")
cat("A opção escolhida foi:", a1)
a1 = as.numeric(a1)


#funções

imprime.n.vezes = function (x,n)
{
  # i eh variavel local
  for (i in c(1:n)){
    cat(i,"",x)
  }
  return ("Acabou o programa!")
}

altera.v.global = function()
{
  i <<- "i mudou!!!!\n"
}

#variaveis globais

i= 14
mensagem = imprime.n.vezes ("Bom dia!\n", 25)
cat(mensagem)

#a funcao reconhece a variavel global
mensagem = imprime.n.vezes("Bom dia!\n", i)
cat(mensagem)



nomes=  c("Joao","Erica","Giovanni")
idades= c(56,45,10)
familia= cbind(nomes, idades)
familia01= as.data.frame(familia)
familia01$nomes
