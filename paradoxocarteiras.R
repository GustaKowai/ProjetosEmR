ganhos <- c(0)
y <- 1
while (y < 1000) {
  y = y+1
  grana1 <- 0
  grana2 <- 0
  lucro1 <- 0
  lucro2 <- 0
  x<-1
  lucrototal1 <-c(0)
  lucrototal2 <-c(0)
  vitorias1 <- c(0)
  vitorias2 <- c(0)
  x <- 1
  while (x < 1000) {
    
    player1 <- sample(1:10,1)
    player2 <- sample(1:10,1)
    if (player1 != player2) {
      grana1 <- grana1+player1
      grana2 <- grana2+player2
      x <- x+1
      if (player1 < player2) {
        lucro1 <- lucro1 + player1+player2
        # lucro2 <- lucro2
        vitorias1[x] <- vitorias1[x-1]+1
        vitorias2[x] <- 0
      }else{ if (player2 < player1){
        lucro2 <- lucro2+player1+player2
        # lucro1 <- lucro1
        vitorias2[x] <- vitorias2[x-1]+1
        vitorias1[x] <- 0
      }
      }
      lucrototal1[x] <- lucro1-grana1  
      lucrototal2[x] <- lucro2-grana2  
      }
  }
  ganhos[y] <- lucrototal1[x] 
}
plot(ganhos)
lines(ganhos)
plot(lucrototal1)
lines(lucrototal2)
plot(vitorias1 - vitorias2)
lines(vitorias1 - vitorias2)
table (vitorias1)
table (vitorias2)
table (vitorias1-vitorias2)
plot(table (vitorias1-vitorias2))
plot(table(ganhos))
