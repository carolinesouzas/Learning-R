
x= c(1,2,3)
y= c(10,20,30)

plot(x,y)

a="João"
class(a)

b <- 8.33
class(b)

c <-TRUE
class(c)

d <-T
class(d)


f= 2+3i
class(f)


#função scan(): le dados do teclado ou de arquivos
#scan ( file= """, what=0, sep =""", skip= 0)
#file= " "




#vetores em R

vetor1 <- c(1,2,3,4,5)

#qual é o tipo do vetor 1?
tipo= class(vetor1)
vetor1
class(vetor1)

#vetores podem ser mistos

a = c(1,2,3,"de","Oliveira","Quatro")
a
tipo_a = is.character(a)
tipo_a

# convertendo vetores numéricos para caracteres
b= c(1,2,3,4,5)
b_convertido= as.character(b)
b_convertido
# convertendo vetores numéricos para operadores lógicos

d= c(1,0,1,0,1,1,1,0)
d_convertido = as.logical(d)
d_convertido 


#acessando valores de um vetor
nomes =c("Bob Cuspe", "Rebordosa", "Wood & Stock")

#acessando os valores
nomes
nomes[1]
nomes[2]

#substituindo valores
nomes[3] = "Ralá Rikota"
nomes

#acrescentando valores
nomes[4]="Mata Hari"
nomes
numeros= c(1:10)
numeros[3]
numeros[3]=300
numeros


#comando para saber qual é o diretório atual
diretorio=getwd()
diretorio
#possível problema ao carregar um arquivo csv gerado em Excell
meuarquivo1 = read.csv("ARQUIVO.csv")
meuarquivo1
readline(prompt="Press [enter] to continue")
#para carregar o arquivo gerado em Excell corretamente
meuarquivo2 <- read.table ("ARQUIVO.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE)

meuarquivo2
readline(prompt = "Press [enter] to continue")
#criando um arquivo no Google Planilhas não ocorre o problema 
meuarquivo3 = read.csv("ALUNOS.csv")
meuarquivo3


#importando arquivos

library(readr)
ArquivoCSV <- read.csv("Arquivo.csv")
library(readxl)
ArquivoExcel <- read_excel("ArquivoExcel.xlsx", col_types = c("numeric", "text", "date", "numeric", "numeric","numeric","text"))

view(ArquivoExcel)

library(haven)
ArquivoSPSS <- read_sav("ArquivoSPSS.sav")
view(ArquivoSPSS)

library(haven)
ArquivoSAS <- read_sas ("ArquivoSAS.sas7bdat", NULL)
View(ArquivoSAS)


#importando dados do clipboard para o R

arquivo= read.delim("clipboard")

#criando um arquivo no Google Planilhas não ocorre o problema
meuarquivo= read.csv ("ALUNOS.csv")
meuarquivo

# o tipo do arquivo é "dataframe"
class(meuarquivo)

#para saber o "header" (nome das colunas) usar comando name
nomesdascolunas=names(meuarquivo)

#para saber a dimensão do arquivo
#numero de linhas
nrow(meuarquivo)

#numero de colunas
ncol(meuarquivo)

#linhas e colunas
dim(meuarquivo)

# a largura é o número de colunas
length (meuarquivo)

#para acessar nomes de cada coluna
nomesdascolunas[1]

#para acessar todos os elementos de determinada coluna
meuarquivo[,1]
meuarquivo[,2]

#qual a média de idades dos alunos?
idade_media= mean(meuarquivo[,5])
notas_media= mean(meuarquivo[,4])

