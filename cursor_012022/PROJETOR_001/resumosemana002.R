#Revisão das principais funções do pacote dplyr ( para manipulacao de dados)

library(tidyverse)
#o pacote dplyt eh parte do tidyverse
#carregando o arquivo starwars, que vem com o pacote
personagens= starwars
#tyble limite a visualizacao a poucas linhas 
personagens
#FUNCAO FILTER
#filtrando dados 
#filter(dados,criterio)
humanos= filter(personagens, species == "Human")
robos= filter(personagens, species == "Droid")

#selecionando mais que, usando "AND"
mulheres= filter(personagens, species =="Human"
                 & gender == "feminine")

#selecionando mais que, usando OR
mulheres.cabelo =filter(mulheres,
                        hair_color == "black" | hair_color == "brown")

#FUNCAO SELECT
#seleciona colunas especificas
select(personagens, name)
select(personagens, name, species)

#selecionando de uma coluna ate outra
select(personagens, name:birth_year)
select(personagens, ends_with("color"))
#select pode mudar ordem de aparecimento das colunas
select(personagens, name, species, everything())

#FUNCAO MUTATE
#adiciona nova coluna, mantem o resto
arquivo =mutate(personagens, altura.metros= height/100)
arquivo

#FUNCAO TRANSMUTE
#da para criar um arquivo apenas com a coluna que voce criou
arquivo2 =transmute(personagens, altura.metros= height/100)


#FUNCAO ARRANGE
arquivo3 = arrange(personagens, height)
arquivo4 = arrange(personagens, desc(height))
arquivo4 


#FUNCAO SUMMARIZE
#apresenta um unico valor
summarise(personagens, altura.media =mean(height, na.rm = T))


#FUNCAO GROUP_BY + SUMMARIZE
especies= group_by(personagens, species)
especies.altura = summarise(especies, altura.media = mean(height, na.rm = T))
especies.altura







