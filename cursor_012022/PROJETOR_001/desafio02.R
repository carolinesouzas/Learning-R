

#Q1: Quantas pessoas fazem parte do grupo? #500
dados = read.csv("grupoescoteiro.csv", sep = ";")
dados

#Q2: O grupo escoteiro tem quantas crianças nos ramos castores, escoteiros, lobinhos, pioneiros e seniors?
ramos = count(dados,ramo)
ramos

#Q3: O grupo escoteiro tem quantas pessoas do sexo masculino e feminino? *
qtdade_sexo_escoteiros = count(dados,sexo)
qtdade_sexo_escoteiros

#Q4: Quais os castores com a progressão "Castor Elo"? *
castor_elo = filter(dados, progressao == "Castor Elo")
castor_elo

#Q5: Qual a idade da pessoa mais nova? e a da mais velha? *
minmax_idade = summarise(dados, min(idade), max(idade))
minmax_idade


#Q6: Quantas pessoas tem o número de matrícula menor que 3000? *
matr_3000 = filter(dados, matricula < 3000)
count(matr_3000)


#Q7: Quantas pessoas tem o primeiro nome "Ana"? *
library("stringr")
nome = "Ana"
nomes = dados$escotistas
achou = str_detect(nomes, nome)
achou
Anas = dados[achou,]
Anas
count(Anas)

#Q8: Dentre as pessoas que tem o primeiro nome "Ana", quais são do ramo "seniors" e tem a progressão "Escalada"? *

q8 = filter(Anas, ramo == "seniors" & progressao == "Escalada")
q8

#Q9: A menina "Ana Clara Correia" é de que ramo? *
q9 =  filter(Anas, escotistas == "Ana Clara Correia")
q9


#Q10: O grupo escoteiro vai sortear um tablet para 3 lobinhos! Crie uma tabela só com lobinhos.
#Após isso ordene a tabela por ordem alfabetica. A seguir use o comando set.seed(1234) 
#para que o seu sorteio seja igual ao meu. Sorteie 3 lobinhos (da tabela de lobinhos 
#ordenados por ordem alfabetica) usando a funcao sample_n. Quais foram os lobinhos sorteados? 

dados
lobinhos = filter(dados, ramo == "lobinhos")
lobinhos_alfa = arrange(lobinhos, escotistas)
lobinhos_alfa

set.seed(1234)
sorteio = sample_n(lobinhos_alfa,3)
sorteio
