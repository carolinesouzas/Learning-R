#Calculando a média usando o R
notas = c(2,3,4,5,5,5,6,10)
media = mean(notas)
media


#Calculo da mediana usando R
#Código em R
#Observacao: os dados não precisam estar ordenados! 
a=c(8,7,8,9,12,11,10)
# calculando a mediana (número ímpar de elementos)
median(a)
#calculando a mediana(número par de elementos)
b=c(7,8,8,9,10,11,12,13)
#valor calculado
median(b)


#Calculando a Moda usando R
# função obtida no site :https://www.tutorialspoint.com/r/r_mean_median_mode.htm
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# vamos calcular a moda para os exemplos anteriores
notas = c(2,3,3,5,5,5,5,6,8,10)
nomes =c("Ana","Ana", "Bia","Bia","Bia", "Celina", "Erica","Erica","Erica","Erica")
moda.notas =getmode(notas)
moda.nomes= getmode(nomes)
moda.notas
moda.nomes


#Calculando o percentil usando R
#Código em R
notas= c(0,1,1,2,2,3,3,3,4,4,4,4,5,5,6,6,7,8,9,10)
# Calcula o quantil 40%
b= quantile(notas,0.4)
d=quantile(notas,0.8)
f=quantile(notas,0.85)
b
d
f

#Calculando quartis usando R
#Código em R
a =c(1,1,3,3,5,7,7,9,10)
quartis= quantile(a, type=6)
quartis

#Gráficos simples, usando R
# Código em R:
x=c(0,1,2,3,4,5,6,7,8,9,10)
y=c(0,2,4,6,8,10,12,14,16,18,20)
plot(x,y,main= "Função Y= 2x", xlab= "eixo X", ylab= "eixo y", 
     type= "l", lwd =5)
# criando uma linha vertical em x=5

abline(v=5, col ="blue")
# criando uma linha horizontal em y=10

abline(h=10, col ="red")
# marcando os pontos com um símbolo

plot(x,y,main= "Função Y= 2x", type="b",lwd =4,
     xlab= "eixo X", ylab= "eixo y")

# plotando duas curvas
x=c(1,2,3,4,5,6,7,8,9,10)
y1=c(2,4,6,8,10,12,14,16,18,20)
y2=c(3,6,9,12,15,18,21,24,27,30)
plot(x,y1, type="b", main ="Comparando Y= 2X com Y = 3X", col= "blue",
     xlab="eixo X", ylab="eixo y",lwd =4, cex.lab= 2, cex.main =2)
points(x,y2, type= "b", col ="red",lwd =4)
# adicionando linhas
abline(v=5, col ="green",lwd =4)
# adicionando um texto em uma posição no gráfico
text(x=5,y=10, label ="Ponto 01", cex = 2)
text(x=5,y=15, label ="Ponto 02", cex= 2)


#Gráfico de torta usando R

# Código em R:

# gráfico de torta simples
respostas = c(2, 8,14, 16, 10)
percentagem = round(respostas/sum(respostas)*100)
legendas = c("Concorda Totalmente", "Concorda", "Neutro", "Discorda",
             "Discorda Totalmente")
# adicionando percentagem calculada ao label
legendas.percentual <- paste(legendas, percentagem, "%") 
pie(respostas, labels = legendas.percentual, main="Q1: Estatística é fácil")

# colorindo a torta, escolhendo a cor de cada fatia
pie(respostas,labels=legendas.percentual,col= c("blue", "yellow","red","orange","pink"),
    main="Q1: Estatística é fácil")



#Gráficos de caixa, usando o R

a =c(1,1,3,3,5,7,7,9,10)
quartils= quantile(a)

# boxplot na horizontal
boxplot(a,main="Diagrama de caixa", xlab="Turma A", 
        ylab="Notas", col="orange", horizontal = TRUE)
text(x=fivenum(a),labels =fivenum(a), y=1.25)

# boxplot na vertical
boxplot(a,main="Diagrama de caixa", xlab="Turma A", 
        ylab="Notas", col="orange", vertical = TRUE)
text(y=fivenum(a)+0.25,labels =fivenum(a), x=1)

# criando dois diagramas de caixa
a =c(1,1,3,3,5,7,7,9,10)
b= c(2,2,4,5,7,8,9,9,10)
boxplot(a,b, main="Múltiplos diagramas de caixa", 
        names=c("Turma A", "Turma B"), 
        col=c("orange", "red"),  horizontal= TRUE)
text(x=fivenum(a),labels =fivenum(a), y=1.5)
text(x=fivenum(b),labels =fivenum(a), y=2.5)


#Desafio 03 

idades= c(2,4,6)
a= idades[1]*idades
b= a[3]
b


































