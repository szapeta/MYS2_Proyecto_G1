library(MASS)
library(survival)
library(fitdistrplus)
library(rriskDistributions)
library(XLConnect)

setwd("~/USAC/Modela 2/LAB/proyecto/MYS2_Proyecto_G1")

buscarProb <- function(excelPath){

  numCorrectas = 0
  i = 1
  notas <- loadWorkbook("[MYS2]OutputData_G1.xlsx")
  
  while (i<192) 
  {
    print(paste0("Columna: #",i))
    lecturaCol = readWorksheet(notas, sheet = 'Processing Data', startCol = i, endCol = i)
    vectorDatos = as.vector(t(lecturaCol))
    contadorDistribuciones <- 1
    while(contadorDistribuciones <= 7)  
    {
      
      ajuste = switch (contadorDistribuciones,
                       fitdist(vectorDatos,"norm"),
                       fitdist(vectorDatos,"unif"),
                       fitdist(vectorDatos,"t", start=list(df=2)),
                       #fitdist(vectorDatos,"chisq"),
                       fitdist(vectorDatos/100,"exp"),
                       fitdist(vectorDatos/100,"gamma"),
                       fitdist(vectorDatos,"weibull"),
                       #fitdist(vectorDatos,"binom", ),
                       fitdist(vectorDatos,"pois",method="mle"),
                       #fitdist(vectorDatos,"geom"),
                       #fitdist(vectorDatos,"hyper"),
                       #fitdist(vectorDatos,"nbinom")
      )
      
      out <- tryCatch(
        {
          resultado <- gofstat(ajuste)
          if(!is.null(resultado$kstest)){
            if(grepl("not rejected", resultado$kstest)){
              print(paste0("Dist: #",contadorDistribuciones))
              print(resultado$kstest)
              contadorDistribuciones = 13
              numCorrectas = numCorrectas + 1
            }
          }
          
        }
      )
      
      contadorDistribuciones = contadorDistribuciones + 1  
        
    }
  
     i = i + 1
  }
  
  print(paste0("Correctas: ",numCorrectas))
  
}

buscarProb("[MYS2]OutputData_G1.xlsx")



