#criando um dataframe

funcionario <- c('Joao', 'Jose', 'Maria')
salario <- c(1000,2000,3000)
aniversario <- as.Date(c('2000-01-1','2008-4-26','2007-5-27'))
dados.funcionarios <- data.frame (funcionario,salario,aniversario)
view(dados.funcionarios)
dados.funcionarios$funcionario
dados.funcionarios$salario
dados.funcionarios$aniversario


#importando um arquivo

#carregando bibliotecas de funcoes
install.packages("tidyr")
install.packages('dplyr', repos = 'https://cloud.r-project.org')

setRepositories()

library("tidyverse")
library(dplyr)
library(tidyr)

df = read.csv("turma.csv", sep= ";")
df


#RESUMO 
#SELECT: seleciona colunas
#eh usada com: contains, starts_with, ends_with, num_range, one_of, matches


df1= select(df,nome,pais)
df2= select(df,contains("o"))
df3= select(df,starts_with("gr"))
df4= select(df,ends_with("io"))
df5= select(df,1:3)
df6= select(df,c(1,3,5))


#RENAME : muda o nome de colunas
# Atencao: rename (df,new_name = old_name)
df7= rename(df, pessoa = nome)
#da para selecionar e renomear ao mesmo tempo
df8= select(df,country= pais)
#da para selecionar tudo e renomear alguns, ao mesmo tempo
df9=  select(df, country= pais, everything ())



#MUTATE: cria novas colunas, que podem ser combinacoes 
#           de colunas existentes, ou calculo envolvendo colunas
#pode criar uma coluna 

df10= mutate(df, ano.nascimento= 2021-idade)
#pode criar varias colunas
df11= mutate(df,ano.nascimento= 2021-idade,media.idades=mean(idade))
nota= c(5,2,3,8,5,6,6,8,3,10,1,4,3,6,5,7,7,9,10,10)
media_da_turma= mean(nota)
df12= mutate(df,nota, media_da_turma)

View(df12)


#TRANSMUTE: cria novas colunas, joga as demais colunas fora
df13= transmute (df,nome, ano.nascimento= 2021-idade)


#FILTER : para manipular linhas, criar nova tabela
#algum criterio
#pode usar<.>,>=,<=, %in%, |, &, !, is.na(), !is.na()
df14= filter(df,nome =='Joao') #2 = é para verificação
df15= filter(df, nome =='Joao' | nome == "Maria") # | é ou
df16= filter(df, idade >= 56)
df17= filter(df,idade >= 18 & salario > 10)
df18= filter(df,sexo == "F")

#SLICE: separa um conjunto de linhas, baseado na posicao
df19= slice(df,1:5)
df20= slice(df, c(1,3,5,7,9))


#ARRANGE: ordem crescente ou decrescente
df21 = arrange(df,idade)
df22 = arrange(df, desc(idade))

#pode ordenar mais de um, pela sequencia
df23 = arrange(df, nome, idade)


#DISTINCT: remove as linhas duplicadas
#Vamos duplicar uma tres linhas
#Vamos usar a função slice
tres.linhas = slice(df,1:3)

#agora vamos juntar ao df
duplicado= bind_rows(df, tres.linhas)
duplicado= arrange(duplicado,nome)

#removendo as linhas duplicadas
df_limpo= distinct(duplicado)

#segundo exemplo
df24= select(df,graduacao, pais)
df24= arrange(df24, graduacao)
df25= distinct(df24)

set.seed(1234)
#SAMPLE_N
df26= sample_n(df,4)
#percentual, no caso 10%
df27= sample_frac(df,0.1)
#amostragem sem reposicao
df28= sample_n(df,4,replace = F)
#amostragem com reposicao
df29= sample_n(df,10,replace = T)

#SUMMARISE: aplica funcoes na colunas e cria tabela com sumario
#combina com min(), max(), mean(), sd(), var(), n(), etc

df30= summarise(df, mean(idade))
df31= summarise(df, mean(idade), min(salario))
df32= summarise(df, rows = n()) #calcula numero de linhas
df33= summarise(df,n()) #mesmo do anterior calcula numero de linhas

#Calculando o número de elementos distintos em uma coluna de um dataframe ( função "n_distinct")

#N_DISTINCT: numero de elementos diferentes
n_distinct(df)
n_distinct(df$graduacao) #<= determinada coluna dentro do dataframe
n_distinct(df$sexo)
n_distinct(df$pais)

#Separando dataframe em grupo e realizando cálculos com os grupos ( funções "group_by" e "summarise")
#GROUP_BY + SUMMARISE
df38= group_by(df,sexo)
df38
df38= summarise(df, n_distinct(graduacao))
df39= summarise(df38, max(idade),min(idade), max(salario),min(salario))

df40 =group_by(df, pais)
df41 = summarise(df40,max(salario), min(salario))

df40 =group_by(df,graduacao, pais)
df40
df433 = summarise(df40,max(salario), min(salario))

#Usando a função "count" do pacote "dplyr"
#Contando o número de elementos distintos em cada coluna ( função "count", pacote "dplyr")
#COUNT:conta linhas de um dataframe

dados = read.csv("turma.csv" , sep = ";")

count(dados)
count(dados, graduacao)
count(dados,sexo)
count(dados,salario)
count(dados,pais)
count(dados,nome)
count(dados,idade)

#count pode ser usado para combinar dados de duas colunas
count(dados,pais,graduacao)
count(dados,sexo,pais)

#count pode ser usado com a funcao "filter"
idosos= filter(dados, idade >50)
count(idosos, graduacao)
salarios.altos= filter(dados, salario > 10)
count(salarios.altos,graduacao)



#Juntando dataframes ( função full_join, pacote dplyr)

require(dplyr)
arq01= read.csv("NOTASQ1.csv")
arq02= read.csv("NOTASQ2.csv")
arq03= read.csv("NOTASQ3.csv")
arq01e02= full_join(arq01,arq02)
#fazer essa operaçao de 2 em 2 arquivos

arq02e03= full_join(arq02,arq03)






