# Grupo 1

## Integrantes

* 200418310 Jose Aguilar
* 200715274 Sergio Mynor David Felipe Zapeta
* 200915305 Sergio Alfonso Ferrer Garcia

## Repositorio
[Proyecto en Github](https://github.com/szapeta/MYS2_Proyecto_G1)

# Documentacion

## Fase 2

### Diseño de Sistema

### Graficas del modelo final
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/modelo02.jpg)

### Explicación de configuraciones
#### Proceso de ventas

En esta seccion, hemos configurado un secuencia para la lectura del archivo de excel, el cual hace uso del proceso llamado lectura ventas
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/ventas02.jpg)



### Componentes, Celdas y Estaciones
# Shelf Assembly Cell
*Servidor SA_Cut_1:		Corta en Piezas la madera.
*Servidor SA_Routing_1:	Enrutamiento de la pezas.
*Servidor SA_Drill_1	Perforan las Piezas.
		  SA_Drill_2		
		  SA_Drill_3
*Servidor SA_Assemble_1	Ensamblaje de las Piezas.
		  SA_Assemble_2	
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/ShelfAC.jpg)

#Frame Assembly Cell
*Servidor FA_Cut_1:	Corta en Piezas la madera.
		  FA_Cut_2:
*Servidor FA_Drill_1	Perforan las Piezas.
		  FA_Drill_2		
		  FA_Drill_3
*Servidor FA_Assemble_1	Ensamblaje de las Piezas.
*Combiner Combiner1:	Adjunta las piezas de la Celda 1 y 2.
		  Combiner2:
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/FrameAC.jpg)

#Back Panel Cell
*Servidor BP_Cut_1:		Corta en Piezas la madera.
*Servidor BP_Drill_1:	Perforan las Piezas.
		  PB_Drill_2		
		  PB_Drill_3
*Servidor BP_Sand_1:	Lijado de las piezas.
		  BP_Sand_2
*Servidor BP_Paint_1	Pintado de las piezas.
		  BP_Paint_2
*Servidor Server32:		Envio del estante a la fase final.
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/BackPC.jpg)

#Final Assembly Cell
*Servidor Assemble_1:	Ensamblaje Final.
		  Assemble_2
		  Assemble_2
*Servidor Sand_1:		Lijado Final.
		  Sand_2
		  Sand_3
		  Sand_4
*Servidor Paint_1:		Pintura Final.
		  Paint_2:
		  Paint_3:
*Servidor Attach_BP_1: Adjuntar el panel al estante.
![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/FinalAC.jpg)

### Conclusiones
* Se recomiendo realizar una línea de producción idéntica para cada tipo de estante, las variantes en el proceso es el tamaño del estante por lo que la configuración de la maquinara se debe de realizar en la estación de corte, perforado y atornillado. Una vez realizada esta configuración en la línea de producción, se debe de añadir más maquinaria en las estaciones de ensamblaje, reducir las colas y aumentar producción.

* También recomendamos tener un control sobre el inventario ya que durante la simulación logramos identificar y cuantificar el material necesario para cada ensamble y la falta de algún producto como un tornillo, un soporte o pintura, dará como resultado un retraso en la tarea en la que se necesite el producto faltante.

* Como ultima recomendación se hace la observación de individualizar aun mas los procesos, para acortar las colas dentro del proceso de fabricación. 



## Fase 3 

#### Resumen Ejecutivo
[Mostrar resumen](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/[MYS2]ResumenEjecutivo_G1.pdf)

#### Presentacion en video del resumen ejecutivo
[Ir a video](https://www.youtube.com/watch?v=KCxTQ6isnYM)

#### Presentacion en video de los integrantes
[Ir a video](https://youtu.be/vJTDCGPwoQs)

#### Informacion de los integrantes

![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/i01.jpg)
* 200418310 Jose Aguilar

![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/i03.jpg)
* 200715274 Sergio Mynor David Felipe Zapeta

![](https://raw.githubusercontent.com/szapeta/MYS2_Proyecto_G1/main/img/i02.jpg)
* 200915305 Sergio Alfonso Ferrer Garcia

