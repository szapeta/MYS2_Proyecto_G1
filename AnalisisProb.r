library(MASS)
library(survival)
library(fitdistrplus)
library(rriskDistributions)
library(readxl)
library(XLConnect)


buscarProb <- function(excelPath){

  i = 1
  notas <- loadWorkbook("[MYS2]OutputData_G1.xlsx")
  
  while (i<192) {
    
    lecturaCol = readWorksheet(notas, sheet = 'Processing Data', startCol = i, endCol = i)
    
    
    
    out <- tryCatch(
      {
        print(i)
        print("unif")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "unif")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("norm")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "norm")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        #print("t")
        #ajuste <- fitdist(as.vector(t(lecturaCol)), "t", start = list(df2))
        #ajuste$estimate
        #prueba <- gofstat(ajuste)
        #prueba$kstest
        #print(prueba$kstest)
        #prueba$chisqpvalue
        
        #ajuste <- fitdist(as.vector(t(lecturaCol)), "chisq")
        #ajuste$estimate
        #prueba <- gofstat(ajuste)
        #prueba$kstest
        #print(prueba$kstest)
        #prueba$chisqpvalue
        
        #if(grepl("not rejected", prueba$kstest)){
        #  print("True")
        #}else{
        #  print("False")
        #}
        
        print("weibull")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "weibull")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("pois")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "pois")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("geom")
        juste <- fitdist(as.vector(t(lecturaCol)), "geom")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("nbinom")
        juste <- fitdist(as.vector(t(lecturaCol)), "nbinom")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("exp")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "exp")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
        print("gamma")
        ajuste <- fitdist(as.vector(t(lecturaCol)), "gamma")
        ajuste$estimate
        prueba <- gofstat(ajuste)
        prueba$kstest
        print(prueba$kstest)
        prueba$chisqpvalue
        
      },
      error=function(cond) {
        
        return(NA)
      }
      
     
    )    
     i = i + 1
  }
  
}

buscarProb("[MYS2]OutputData_G1.xlsx")



