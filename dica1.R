## Por Benilton Carvalho
##
## Determinando os par�metros da Normal
media <- 170
stder <- 8
 
## Criando o grid no qual deseja-se visualizar a densidade
x <- seq(media-3*stder, media+3*stder, .01)
 
## Determinando a densidade em cada ponto do grid
y <- dnorm(x, media, stder)
 
## Gr�fico da densidade no grid de interesse
plot(x, y, type='l', xlab='Eixo X', ylab='Eixo Y')
abline(h=0, v=media, lty=2)
 
## Determinando o sub-grid de interesse
##   e a densidade em cada ponto da regiao
## Regi�o inferior apenas.
hx <- seq(media-3*stder, media-2*stder, .01)
hy <- dnorm(hx, media, stder)
 
## A funcao polygon() necessita do caminho inteiro
##   da regiao a ser colorida. Ent�o, para cada hx[i],
##   existem 2 pontos determinando o pol�gono: a) na
##   altura da densidade e b) em zero (para fechar o
##   pol�gono).
n <- length(hy)
polygon(c(hx, rev(hx)), c(hy, rep(0, n)), col=2)
 
## Repetindo para a regi�o superior
hx <- seq(media+2*stder, media+3*stder, .01)
hy <- dnorm(hx, media, stder)
n <- length(hy)
polygon(c(hx, rev(hx)), c(hy, rep(0, n)), col=2)
