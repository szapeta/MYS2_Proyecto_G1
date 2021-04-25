library(MASS)
library(survival)
library(fitdistrplus)
library(rriskDistributions)
library(XLConnect)
#setwd("C:/Users/30201507/Desktop")

buscarProb <- function(excelPath){
  
  i = 1
  notas <- loadWorkbook(excelPath)
  
  while (i<192) 
  {
    print(paste0("Columna: #",i))
    lecturaCol = readWorksheet(notas, sheet = 'Processing Data', startCol = i, endCol = i)
    
    
    
    out <- tryCatch(
      {
        ajuste <- fitdist(as.vector(t(lecturaCol)), "unif")
        prueba <- gofstat(ajuste)
        if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
          print(i)
          print("unif")
        }else{
          ajuste <- fitdist(as.vector(t(lecturaCol)), "norm")
          prueba <- gofstat(ajuste)
          if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
            print(i)
            print("norm")
          }else{
            ajuste <- fitdist(as.vector(t(lecturaCol)), "weibull")
            prueba <- gofstat(ajuste)
            if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
              print(i)
              print("weibull")
            }else{
              ajuste <- fitdist(as.vector(t(lecturaCol)), "gamma")
              prueba <- gofstat(ajuste)
              if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
                print(i)
                print("gamma")
              }else{
                ajuste <- fitdist(as.vector(t(lecturaCol)), "geom")
                prueba <- gofstat(ajuste)
                if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
                  print(i)
                  print("geom")
                }else{
                  ajuste <- fitdist(as.vector(t(lecturaCol)), "nbinom")
                  prueba <- gofstat(ajuste)
                  if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
                    print(i)
                    print("nbinom")
                  }else{
                    ajuste <- fitdist(as.vector(t(lecturaCol)), "exp")
                    prueba <- gofstat(ajuste)
                    if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
                      print(i)
                      print("exp")
                    }else{
                      ajuste <- fitdist(as.vector(t(lecturaCol)), "gamma")
                      prueba <- gofstat(ajuste)
                      if(length(prueba$kstest) & grepl("not rejected", prueba$kstest)){
                        print(i)
                        print("gamma")
                      }
                    }
                  }
                }
              }
            }
          }
        }
      },
      error=function(cond) {
        
        return(NA)
      }
      
      
    )    
    i = i + 1
  }
  
  print(paste0("Correctas: ",numCorrectas))
  
}

buscarProb("[MYS2]OutputData_G1.xlsx")
