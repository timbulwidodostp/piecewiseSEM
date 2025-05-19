# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Piecewise Structural Equation Modeling Use piecewiseSEM With (In) R Software
install.packages("piecewiseSEM")
install.packages("semEff")
library("semEff")
library("piecewiseSEM")
piecewiseSEM = read.csv("https://raw.githubusercontent.com/timbulwidodostp/piecewiseSEM/main/piecewiseSEM/piecewiseSEM.csv",sep = ";")
# Estimation Piecewise Structural Equation Modeling Use piecewiseSEM With (In) R Software
modelList <- psem(lm(y1 ~ x, piecewiseSEM), glm(y2 ~ x, "poisson", piecewiseSEM), lm(y3 ~ y1 + y2, piecewiseSEM), piecewiseSEM)
summary(modelList)
summary(modelList, conserve = T)
summary(modelList, direction = c("y2 <- y1"))
modelList2 <- update(modelList, y2 %~~% y1)
summary(modelList2)
# Piecewise Structural Equation Modeling Use piecewiseSEM With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished