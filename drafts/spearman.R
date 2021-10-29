rho1 <- 0; rho2 <- 0; rho3 <- 0
while ((round(rho1, 1) != .9) | (round(rho2, 1) != .9) | (round(rho3, 1) != .9)) {
  x <- sample(7)
  y <- sample(7)
  z <- sample(y)
  rho1 <- cor.test(x, y, method = "spearman")$estimate
  rho2 <- cor.test(x, z, method = "spearman")$estimate
  rho3 <- cor.test(y, z, method = "spearman")$estimate
  }
x
y
z
rho1
rho2
rho3


