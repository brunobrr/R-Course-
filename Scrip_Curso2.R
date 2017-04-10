##### Para quem esta apostila e escrita?
# Esta apostila e destinada a pessoas que nunca tiveram nenhum contado previo com o R ou para 
# aquelas pessoas que desejam aperfeicoar seus conhecimentos basicos. Nao tenho a intencao de  
# ir a fundo em assuntos complexos e avancados de programacao e estatistica. 
# Alias, este nao e um curso de estatistica. Apesar de R ser um software para tal fim, 
# acredito o aprendizado da linguagem basica de programacao em R nao deve ser ministrado em conjunto com 
# um curso de estatistica. 

# Ser um bom usuario do R requer pratica, paciencia e perceveranca. Esta frase a primeira vista pode
# soar desmotivadora, porem, nao e. Adquirimos conhecimento sobre algo mais naturalmente se tivermos estas
# virtudes em mente. Aprender R talvez seja como aprender a tocar violao. E claro que voce nao conseguira
# tocar a quinta sinfonia de Bethoven com apenas uma semana de aula. Primeiro e importante conhecer as partes do
# violao, suas cordas, como posicionar os dedos, e comecar a praticar. Juntamente com a pratica e fundamental 
# o conhecimento da teoria musical, para dar significado a pratica. As primeiras aulas sao sempre mais dificeis. 
# Os dedos doem, ha o sentimento de que voce nao vai conseguir, a teoria e chata, etc. Aprender o R e como aprender 
# a tocar violao. Voce ira passar pela estapa de conhecer a logica de programacao e o funcionamento do R, 
# aprender seus conceitos basicos, se entusiasmar e tambem pensar em desistir quando achar
# que o R e muito chato e que nao vale a pena "perder tempo" aprendo algo que voce pode fazerrapidamente no Excel. 
# Mas calma, respire! Todo o tempo investido no inicio em aprender o R vale a pena. Assim como aprender a tocar violao, 
# com o tempo voce ficara familarizado com os comandos basicos e as coisas ficarao mais simples. 
# Como disse, nao espero nesse curso inicial que voce seja um bom programador, assim como nao espero que em apenas uma 
# semana de aula de viocao voce consiga tocar 5? sinfonia de Bethoven. Posso dizer que nesse curso voce ira aprender
# o basico sobre o R e sua linguagem; seguindo a analogia com o violao, apos esse curso espero que voce consiga tocar
# "pra nao dizer que nao falei de flores" e "Bloowing in the wind", cancoes que a maioria dos alunos aprendem no inicio




# 1. Introducao
# O que e R
# Baixando e instalando o R
# Vantagens e desvantagens
# Como e onde obter ajuda
# Como instalar e carregar um pacote
# Uma impressao inicial


# 2. Primeiro passos - Objetos 
# Tipos basicos de dados usados em R (numeros, caracteres, logicos, valores especiais)
# Principais classes de objetos usados em R
# - vectores
# - matrizes
# - Dataframe
# - Listas





### O que ? o R?


### Como e onde obter ajuda
# E rotineiro no inicio (e nao so no inicio...) nao saber como escrever algo ou como usar uma funcao. Por isso, existem
# varios materias de ajuda disponiveis no proprio R e tambem muitos materiais disponiveis online.
# Vamos aprender como pedir ajuda!

?mean() # veja a pagina de ajuda da funcao "media"

# Veja que na aba "Help" surgiu o arquivo de ajuda na funcao "lm". De forma geral, o arquivo de ajuda contem:
# "Description": uma descricao da funcao
# "Usage": o nome da funcao e seus possiveis argumentos. Nem todos argumentos precisam serem inseridos na funcao para que
#  ela funcione; alem disso,voce pode mudar um argumento de acordo com as opcoes oferecidas pela funcao
# "Details": uma descricao detalhada da funcao
# "Value": Diferente das informacoes acima, o essa secao nao e comum em todas funcoes do R. Neste caso, ela indica uma
# descricao dos argumentos da funcao.
# "See also": pagina de ajuda de funcoes similares a que voce esta usando
# "Examples": Exemplos executaveis do uso da funcao. Dica: copie e cole este exemplos no scrip e execute cada linha para 
# aprender de forma mais detalhada como usar a funcao.

# Alem dos arquivos de ajuda proprios do R, existem muitos materiais de ajuda online. Caso voce tenha duvida sobre uma uma
# funcao, sobre um erro que surgiu, ou ainda se voce nao tem a minima ideia de como fazer algo no R, digite no Google 
# "Using lm funcion in r". Sei que soa como clich?, mas realmente ajuda. Alem disso, o site "Stack Overflow"
# e uma execelente fonte de respostas sobre suas duvidas. Tente: "How to create a raster from a dataframe in r?" 




### Como instalar e carregar um pacote
# As funcoes do R sao escritas e disponibilizadas na forma de "pacotes". Um pacote geralmente e criado para um fim especifico e contem um conjunto de funcoes. Por 
# exemplo, o pacote "raster" contem muitas funcoes para criar e manipular rasters no R. 

install.packages("raster") # comando para instalar o pacote raster
library(raster) # comando para carregar o pacote raster

# Uma vez instalados, os pacotes ficam armazenados na memoria do computador. Entretanto, com excecao dos pacotes basicos do R, ao iniciar uma nova secao do
# sempre temos que carregar  os pacotes que iremos usar usando a funcao library(...)
# Dica: mantenha no inicio do scrip uma lista de pacotes que devem ser carregados. Por exemplo:

install.packages("raster") # lembre-se: uma vez instalado nao e necessario instalar o pacote novamente quando abrir o R
install.packages("maptolls")
install.packages("vegan")

library(raster) # lembre-se: e preciso carregar os pacotes toda vez que inicar o RStudio
library(maptools)
library(vegan)



### Baixando e instalando o R
# Para fazer o download o programa siga os seguintes passos:
# 1. na pagina https://www.r-project.org/ clique;
# 2. "download R";
# 3. escolha um Cran do Brasil;
# 4. escolha fazer download do programa para Linux, Mac ou Windows; 
# 5. clique em "install R for the first time" e, por fim em;
# 6. "Download R 3.3.3 for Windows";
# Proceda com a instala??o do programa

# O Rstudio oferece op??es visuais que facilitam o aprendizado e a escrita de c?digos. Assim, recomendo fortemente
# que voc? use o Rstudio. 
# Mas ainda assim e preciso ter o R instalado.

# 1. Faca o download do RStudio em https://www.rstudio.com/products/rstudio/download/;
# 2. escolha fazer download do programa para Linux, Mac, Windows ou Fedora;




### Uma impressao inicial
# Inserir uma figura com indicacao dos comandos basicos do RStudio (ver ex. cheatsheet)
# Usamos um scrip (uma sequencia de codigos) para escrever e salvar nossos codigos. Para carregar um novo 
# scrip va em
# 1. "File" 
# 2. "New File" 
# 3. R Script. 
# 4. Para salva-lo, clique no disquete.
# Variaveis, dados, funcoes, resultados sao armazenados no R na forma de objetos que possuem um (a, a1, minha_tabela). Objetos
# podem ser manipulados por de operacoes (aritimetica, logica, comparacoes) e por meio de funcoes. Por exemplo, na linha de 
# comando abaixo o objeto nomeado "a" armazena a informacao "2", um vetor numerico.


# Usamos o sinal de atribui??o "<-" para atribuir uma informacao a um objeto 
a <- 2 

# Um exemplo de uma funcao armazenada no objeto "x
x <- function(a){a +5}
x(a)


# Note que sempre que um novo objeto e criado ele earmazenado no "Environment" (Parte direita superior da tela).
# Para rodar o codigo acima basta colocar o curso em cima da linha do codigo e clicar em "Run" ou "Ctrl + Enter". 
# Note que quando executamos uma linha de codigo esta linha aparece no "Console" (Parte inferior da tela). 
# Para visualizar o conteudo de um objeto basta executar apenas seu nome. 
# Quando digitamos "a", temos o seguinte resultado:

a
[1] 2 # O numero entre parenteses indica posicao dos elementos do objeto


# Importante, o nome de todos os objetos deve sempre comecar como uma letra e pode incluir outros caracteres
# numeros, underline (_), e ponto (.). Alem disso, o R diferencia entre letras maiusculas e minusculas. Faca o teste, execute os
# seguintes comandos: 


a
A # "Error: object 'A' not found". Este erro ocorre porque o objeto "A" nao existe.


# Dica: Use Hashtag (#) para fazer anotacoes. As linhas de comando que comecam com "#" nao sao executadas.
# Mais uma dica: nao use acentos e caracteres especiais tais como cedilha, tiu, barras, etc, ao escrever seus codigos


# Vamos criar alguns objetos 

# vetores numericos com um objeto
b <- 15
b
c <- 0.1
c

# Sempre use ponto ao inves de virgula para escrever numeros nao inteiros
d <- 0,1 
d

# vetor numerico com cinco elementos
e <- c(1,3,6,9,12,15)

# um vetor numerico de um elemento com a soma de dois numeros
E <- 20 + 5
E

# soma de dois elementos armazenados nos vetores "b"e "E"
f <- b + E

# Perceba Resultado da operacao abaixo nao e salvo na forma de uma objeto
10+13+65 

# um vetor de caracteres com seis elementos
letras <- c("este", 'e', 'um', 'vetor', 'de', 'caracteres') 


# Dica: usamos a funcao "c" para concatenar caracteres ou numeros em um vetor. Os elementos de um vetor estao dentro 
# de parentesis () e sao separados por virgula (,)



# Escrever em R e como escrever em portugues. Por exemplo, vamos escrever passo-a-passo como calcular a media
# do objeto "idade":
idade <- c(27, 38, 26)
ii <- c(28, 27)

# Tenha em mente que media nada mais e do que a soma dos valores divido pelo numero de observacoes. Sendo assim precisamos:
# 1. somar todos os valores do objeto idade
# 2. dividir a soma dos valores por 3

media.soma <- 27 + 38 + 26
media <- media.soma/3
media

# O R tambem possui funcoes pre-definidas. Tente a seguinte funcao:
m <- mean(idade)

# No decorrer no curso voce ira aprender o que e uma funcao e como usa-las. Voce tambem ira aprender a fazer suas proprias funcoes. 



### Parte 1. Exercicios
# 1. Instale e carregue o pacote "LetsR" no seu computador.
# 2. Crei um objeto com nome "num" com numeros de 1 a 10.
# 3. Crei um objeto com nome "letras" com cinco nomes diferentes.
# 4. Calcule a media do objeto "num".
# 5. Use a funcao class() para descobrir a classe dos objetos "num" e "letras".
# 5. Use a funcao str() para descobrir a estrutura dos objetos "num" e "letras".
# 6. Qual a soma de 2665 mais 7554. Salve o resultado em um objeto.
# Crie um objeto com nome "media.2" com seguintes valores (1,15,25,30,NA,50,51,NA,48). Use o arquivo de ajuda .
# da funcao usada para calcular a media para excluir os valores "NA".
# 7. Use a funcao length() para descobrir o tamanho do objeto "media.2".
# Crei um objeto com nome "r" contendo os numeros 1,2 e 3 repetidos 100 vezes (ex. 1,2,3,1,2,3...). Dica: use a funcao
# rep para resolver este exercicio.




### 2. Primeiro passos 
### Tipos basicos de dados usados em R

# Ha quatro tipos de dados geralmente usados no R: 
# 1.numericos - numeros 
# 2.caracteres - texto 
# 3.logicos (TRUE or FALSE) 
# 4.Valores especiais - NA, Inf, NULL

# Ha quatro tipos basicos de classes de objetos usados em R
# 1. vector: 1 dimensao; numericos, categoricos ou logicos
# 2. factor: 1 dimensao; niveis de uma variavel categorica
# 3. matrix: 2 dimensoes; vetores de um mesmo tipo (ex. numericos) organizados em linhas e colunas
# 4. Data frame: 2 dimensoes; mesmo que matriz, mas pode conter vetores numericos, categoricos ou logicos
# 5. Lista: Pode conter objetos de diferentes tamanhos, tipos e classes


######################## Inserir a figura ilustrativa ##################################


### Vetores
# Vetores nada mais sao do que uma sequencia linear de elementos (numericos, ou categoricos, ou logicos)


# Vetores numericos
v1 <- 7
v1

# a funcao class retora o tipo de objeto (numerico, caractere, logico)
class(v1)

# A funcao "rep" para repetir o elemento armazena em v1 30 vezes. "x" e "times" sao argumentos da funcao. "x" pode ser um
# numero ou um objeto; "times" indica o numero de vezes que "x" sera repetido
rep(x=v1, times=30) 
# Tambem podemos escrever a funcao omitindo o nome dos argumentos, mas mantendo a ordem logica
rep(v1, 30) 


# A funcao "str" e similar a funcao "class" e indica o tipo, o tamanho, e os elementos de um objeto
v2 <- c(9.5, 7.1, 8, 2, 3.3, 5.4, 10.5)
v2
str(v2)


# Algumas operacoes matematicas
20 + 1 + 5 
10/5
(2*2)*5/2
v2 + 1 # soma 1 a todos elementos
v2 * 2

# Algumas operacoes matematicas usando objetos
v1 + v2 # adicao
v1/v2 # divisao
v1*v2 # multiplicacao
log(v1) # logaritmo
exp(v1) # expoente
round(v2) # arredondar um numero
sort(v2) # Ordenar em order crescente

# Use o arquivo de ajuda ?sort e descubra como ordem um vetor em ordem decrescente

# O sinal ":" ou "sequencia"  indica uma sequencia de 1 a 15
v3 <- 1:15 
v3
v3.1 <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)

# Indexacao - selecionar elementos de um vetor de acordo com a POSICAO de seus elementos
# Voce pode um elemento por meio de sua posicao em um vetor usando a notacao x[s], onde "x" e um vetor e "s" indica
# indica a posicao dos elementos
v3.1 <- c(1,2,4,6,8,10,12,14,16,18,20,22,24,26,28)

v3.1[5] # quinto elemento do vetor
v3.1[2:5] # elementos na segunda a quinta posicao
v3.1[c(1,3)] # selecionar apenas o primeiro e terceiro elemento

# Voce tambem pode usar um sinal negativo (-) para retornar todos elementos exceto aqueles indicados
v3.1[-1] # todos menos o primeiro elemento
v3.1[-1:10] # todos menos os dez primeiros elementos
v3.1[-c(1:3)] # todos menos os tres primeiros elementos 
v3.1[-(2:4)] # todos menos os elementos que estao na segunda, terceira e quarta posicao


# Mais algumas operacoes matematicas
mean(v3.1) # media
sum(v3.1) # soma
max(v3.1) # maximimo
min(v3.1) # minimo
quantile(v3.1) # quartis


# Indexacao - selecionar elementos de um vetor de acordo com VALOR 
v4 <- rep(1:15, times=3) 
v4
# Diferente de selecionar um elemento de acordo com sua posicao, agora repetimos o nome do vetor dentro dos colchetes
v4[v4 == 1] # valores iguais a 1
v4[v4 >= 3] # vaores maiores ou iguais a 3
v4[v4 > 3] # valores maiores que 3
v4[v4 != 1] # valores diferentes de 1
v4[v4 != 1 & v4 > 4] # valores diferentes de 1 E maiores do que 4


# Tambem e possivel substituir elementos em um vetor
v4.1 <- v4 # criamos um vetor igual a v4
v4.1[1] <- 100 # substituir o elemento na primeira posicao por 100
v4.1
v4.1[v4.1 >= 10] <- 999 # substituir elementos maiores do que 10 por 99
v4.1
v4.1[] <- log(v4.1) # substituir cada elemento pelo seu log
v4.1


v5 <- rep(1:15, each=3) #  Compare esse vetor com  "V4". Notou a diferenca?
v5

# A funcao "seq" e ":" produzem os mesmos resultados
v6 <- seq(from =1,to= 15)
v6
1:15
v6[11:15] <- seq(from=60, to=100, by=10) # sequencia de 60 a 100 de dez em dez
v6


# Importante: vetores podem ter somente um tipo principal de dado: numericos OU caracteres OU logicos
v7 <- c(5,6,7)
v7
class(v7)


v8 <- c(1,2,3, "a")
v8
class(v8) # Note que todos elementos foram transformados em caracteres


# Entretanto, podemos usar NA para indicar ausencia de dados sem alterar o tipo de dado do vetor
# Veremos mais detalhes na sessao "caracteres especiais"
v9 <- c(1,2,NA,4,NA,6)
v10 <- c("a", "b", NA, "d")
v9
class(v9)
v10
class(v10)




# Vetores categoricos
# Usamos aspas (duplas "" ou unicas '') para escrever caracteres
c <- c(a, ab, abc, abcd)


c0.gen <- "Ocotea"
c0.spp <- "odorifera"


# Usamos a funcao "paste" para concatenar vetores categoricos
paste(c0.gen, c0.spp)
paste(c0.gen, c0.spp, sep="_") 
# Se voce ficou com duvida sobre o argumento "sep", peca ajuda: ?paste


c1 <- c("a", "b", 'c', "d", 'e')
class(c1)
str(c1)
length(c1)


c2 <- c("baixo", "medio", "alto", "extremamente alto")
c2
class(c2)
length(c2) # tamanho de c2
c2[1] # descubra qual o primeiro elemento de c2
c2[4] # descubra qual o quarto elemente de c2
c2[2] <- "regular" # substitua o elemento na posicao 2 por um novo elemento
c2


c(c1,c2) # concatenar (agrupar) vetores
c(c2, c1) 


c3 <- as.factor(c2)
c3 # fatores sao categorias


c4 <- rep(c3, each=3)
c4


c5 <- rep(c3, times=3)
c5


c6 <- as.factor(v6) # note que agora, por exemplo, 1 nao e um numero e sim uma categoria 
str(c6) 



# Vetores logicos
num<- c(1,5,10) # vetor numerico
num
log <- vet.num.1 > 1 # vetor logico
log

num[log] # um vetor logico (T e F) indicam a POSICAO para selecionarmos elementos em um vetor

vet.log.1 <- vet.num.1[vet.num.1 > 1]
vet.log.1
c7 <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h')
c8 <- c('a', 'f')

quais <- c8 == c7 # quais elementos sao comuns dos dois vetores?
class(quais) 
iguais <- c7[quais] # entendeu a logica? 

i.c7 <- c7[which(c7 %in% c8)] # traduzindo este comando. Considerando c7, quais valores deste vetor sao iguais a c8?
i.c8 <- c8[which(c8 %in% c7)] # Qual a diferenca?



# Caracteres especiais
ce <- NA # NA = Not available; ausencia de dados  
ce
ce <- c(1,2,NA,3) # Note que os elementos do vetor "ce" foram substituidos
ce
is.na(ce) # verifique se ha NA em um objeto
is.na(ce) <- 2 # substitua NA por 2



# Parte 2. Exercicios
# 1. Crie um vetor chamado cncf com os seguintes elementos: Centro, Nacional, Conservacao + flora
# 2. Qual a classe do objeto cncf?
# 3. Qual o tamanho do objeto cncf?
# 4. Crie o seguinte vetor: letras <- rep(c("a", "b", "c", "D", "E"), 50)
# 5. No vetor "letras" substitua "D" por d

# 6. Considere os seguintes vetores
# x <- c(4,5,6,8,14,21,25)
# y <- c(1,2,6,8,14,25,31)
# a. Qual o valor de x * y
# b. Qual a media, o valor maiximo e minimo de x
# c. Crie um vetor "z" e concatene x e y
# d. Quais valores de "z" sao menores que 20?
# e. Substitua os valores de "z" menores que 20 por 1

# 7. Crie um vetor numerico com nome "v.50" com sequencia de 1 a 50; calcule a media e o desvio padrao desse vetor;
# a. Crie um nome objeto e exclua os 10 primeiros elementos do objeto "v.50"
# b. Some 1 a cada elemento do objeto "v.50"
# c. Substitua todos elementos de v.50 menores que 40 por zero
# d. Desculpa quais elementos de v.50 sao iguais a 1. Substitua estes elementos pelo vigesimo elemento de v.50



# Matrizes
# Matrizes sao formados por vetores organizados na forma de linhas e colunas. Diferentemente de "data frame", uma matriz contem vetores de apenas um tipo, 
# isto e, apenas numeros, OU caracteres OU  logicos

# Vamos criar uma "matriz vazia", sem valores usando a funcao "matrix"
matrix(ncol=2, nrow=2)

m.col <- matrix(1:4, ncol=2, nrow=2) #  valores distribuidos por colunas
m.lin <- matrix(1:4, ncol=2, nrow=2, byrow=T) # valores distribuidos por linhas


t(m.lin) # transpor a matriz 


# Lembre-se: uma matriz e formada por vetores. Vamos criar uma matriz a partir de vetores
ve.1 <- c(1,3,6,9,10)
ve.2 <- c(6,2,10,5,7)


m1 <- cbind(ve.1, ve.2) # agrupar vetores por colunas
m2 <- rbind(ve.1, ve.2) # agrupar vetores por linhas
m1
m2
dim(m1) # qual a dimensao (numero de linhas e colunas) da matriz?
dim(m2)
class(m1)


# Tente...
ve.3 <- ve.1 # criamos um novo vetor igual a ve.1
ve.3 <- ve.3[-1] # removemos o primeiro elemento



# Perceba o que acontece quando tentamos criar uma matriz com vetores de tamanhos diferentes...
m3 <- cbind(ve.1, ve.3)


# Nomear linhas e colunas
colnames(m1) # nome das colunas
rownames(m1) # nome das linhas


colnames(m1) <- c('plantas', 'animais')
rownames(m1) <- c('amostra1', 'amostra2', 'amostra3', 'amostra4', 'amostra5')
m1


# tambem e possivel alterar o nome das colunas e linhas
colnames(m1) <- c("Fabaceae", "Myrtaceae")


# Manipulando uma matriz
# Assim como vetores, podemos usar indexador "[posicao], [c(valor)], ["texto"] " para manipular uma matriz

# Ao usarmos o indexador para manipular matrizes, as linhas estao sempre a esquerda da virgula e colunas a direita da virgula
# m[linhas,colunas] 

m1[5] # retorna o quinto elemento da matriz
m1[2,2] # elemento da segunda linha e segunda coluna
m1[,2] #  segunda coluna
m1[1,] # primeira linha
m1[1:3,] # tr?s primeiras linhas
m1[1,2] + m1[5,1]


# Voce tambem pode usar funcoes do R para calcular algumas estatisticas descritivas de uma tabela
colSums(m1) # soma de cada coluna
rowSums(m1) # soma de cada linha
colMeans(m1) # media de cada coluna
rowMeans(m1) # media de cada linha
nrow(m1) # numero de linhas da matriz
ncol(m1) # numero de colunas da matriz


# Data frames

# Uma objeto da classe "matrix" pode ser transformado em "data frame"
df <- as.data.frame(m1) # usamos uma funcao coercitiva para transformar m1 em data frame
class(df)


# Vamos criar alguns vetores
nome <- c("Carlos", "Rosangela", "Carla", "Bruno")
sobrenome <- c("Roberto", "Claudete", "Lays", "Ribeiro")
idade <- c(57, 46, 26, 27)
sexo <- c("masculino", "feminino")
id <- 1:length(idade)

# A partir desses vetores vamos criar algumas tabelas (matriz e/ou data frame)
m2 <- cbind(nome, sobrenome)
m2
class(m2)
dim(m2)


m3 <- cbind(nome, sexo) # Note que quando concatenamos vetores de diferentes tamanhos o R recicla elementos do vetor de menor tamanho
class(m3)


m4 <- cbind(nome, sobrenome, idade)
class(m4) # note que o vetor "idade" do tipo numerico foi transformado em texto
class(m4[,3])


df4 <- data.frame(nome, sobrenome, idade)
str(df4) # Perceba que duas primeiras variaveis foram transformadas em fatores


# Para evitar que isso aconteca usamos o seguinte argumento 
df4.1 <- data.frame(id, nome, sobrenome, idade, sexo, stringsAsFactors=F) 
str(df4.1) # Agora todos vetores foram agrupados em um data frame mantendo seus tipos


# Podemos usar $ para selecionar partes de uma matriz (dataframe) por meio do nome de uma coluna
df4.1$id
df4.1$nome
df4.1$nome == "Carlos"


df4.1[df4.1$nome == "Carlos",] # A presenca da virgula indica que estamos selecionando a linha que satisfaz a condicao nome == "Carlos"
df4.1[df4.1[,2] == "Carlos",] # Compare o uso de $ e []. Alguma diferenca?
df4.1[df4.1$idade >= 30]
df4.1[df4.1$idade >= 30,]
df4.1[c(1,3),]
df4.1[c(1:3),]
df4.1[,c("id", "nome")]
df4.1[c("id", "nome")]


# O R possui uma funcao para selecionar elementos de uma matriz ou dataframe
?subset
subset(df4.1, nome == "Carlos")


# Apos criar estas tabelas, voce seria capaz de dizer a diferenca ente objeto da classe matriz e data frame?
# A resposta e simples:
# Uma matriz pode ser feita apenas com objetos do mesmo tipo (ex., apenas vetores numericos);
# Um data frame aceita objetos de todos os tipos (numericos, categoricos, logicos)



# Exercicios - matriz e dataframes




# Listas
# Uma lista podem conter objetos de diferentes classes (ex., matrizes e vetores), tipos (numeros e caracteres) e tamanhos
# Dica: ha uma pequena diferenca entre listas e outros objetos de outras classes que nos aprendemos ate aqui. Uma lista pode e um tipo
# de vetor analogo a um "container".

# Primeiro vamos criar alguns objeto
l0 <- c("Ocotea odorifera", "Myrcia splendens", "Siparuna guianenses", "Psycotria vellosiana")
class(l0)
l1 <- c(20,30,40,NA)
class(l1)
l2 <- matrix(runif(20,min = 0, max = 1), nrow=4, ncol=5)
class(l2)
l3 <- data.frame(l0, l1)
class(l3)


lista.dados <- list(l0, l1, l2, l3)
class(lista.dados)
length(lista.dados)


# Note a diferenca entre usar [] ou [[]] em para acessar objetos em uma lista
class(lista.dados[1])
class(lista.dados[[1]])


# Imagine que uma lista seja um trem. Use o sinal [[]] para indicar a posicao dos vagoes, ou seja, cada um dos objetos em uma lista.
# Mas se vc quiser entrar no vagao, isto e, extrair dados de um objeto presente em uma lista, vc deve usar o sinal []


lista.dados[[2]] # o segundo objeto
lista.dados[[3]] # o terceiro objeto
lista.dados[[4]][1,] # a primeira coluna do quarto objeto
names(lista.dados) <- c("vetor de caracteres", "vetor numerico", "matriz", "data frame")
lista.dados

# Lembre-se: uma lista e um objeto com uma unica dimensao similar a um vetor. Use [[]] para indicar o objeto em uma lista, e depois 
# use [] da mesma forma que usamos para manipular vetores, matrizes e data frames.

is.na(lista.dados) # nenhum objeto da lista e NA
is.na(lista.dados[[2]])
is.na(lista.dados[[4]][,2])


lista.dados[[1]][3] # terceiro elemento do primeiro objeto da lista
colSums(lista.dados[[3]]) # soma das colunas do terceiro objeto
median(lista.dados[[3]][,2]) # mediana da segunda coluna do terceiro objeto


lista.dados[[2]][3] <- 35
lista.dados[[2]]
lista.dados[[2]] + 1
lista.dados[[2]][c(1,2)]
lista.dados[[4]][c(1,2),]


# Se os objetos na lista possui um nome, podemos seleciona-los usando $
lista.dados$matriz
lista.dados$`vetor de caracteres`
lista.dados$`data frame`
lista.dados$`data frame`[1,2]
lista.dados$`data frame` [,1]
lista.dados$`vetor numerico`[1]


mediana <- median(lista.dados[[2]], na.rm=T)
soma <- sum(lista.dados[[2]], na.rm=T)


lista.dados <- c(lista.dados, mediana, soma) # adicionar novos objetos a uma lista


rm.lista <- unlist(lista.dados) # desvincular itens de uma lista
class(rm.lista)


# Exercicios - lista

# Funcoes, argumentos e a gramatica necessaria para escrever em R




---------------------------------
  # 4. Abrir e salvar arquivos
  
  # 5. Operadores
  
  # 6. Manipulação de objetos
  
  # Criação de dados
  
  ---------------------------------
  # 7. Dados
  
  # 8. Controle de Fluxo
  
  # 9. Escrevendo suas proprias funções
  
  # Lacos e o comando "se"
  
  