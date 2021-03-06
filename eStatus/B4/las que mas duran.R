# Un fabricante nos ofrece un nuevo tipo de bater�as para el aparato de medici�n
# que usamos habitualmente, el cual usa unas que duran en media 10 horas. En
# principio aquellas tienen una duraci�n superior,  y queremos comprobar esta
# afirmaci�n. La prueba de hip�tesis que se plantea es:
H: � = 10
 
# Con esta formulaci�n, suponemos que la media � de la poblaci�n de las nuevas
# bater�as es igual a la de las anteriores, es decir, adoptamos una postura
# conservadora (honesta) que s�lo nos permitir� concluir que las nuevas baterias
# son "mejores" cuando los datos de la muestra nos haga la hip�tesis H poco
# cre�ble. Es decir, cuando la evidencia (informaci�n) emp�rica, contenida en
# las observaciones de la muestra, nos indique que una poblaci�n con una duraci�n
# media superior a la de las bater�as que se fabricaban antes es un origen m�s
# probable.
# La muestra recogida es la duraci�n en horas (con precisi�n de un cuarto de
# hora) de 7 dispositivos que han funcionado hasta dar se�ales de que la bater�a
# se ha descargado.
 
###PREGUNTA 1 ###
# Supongamos conocida la varianza de la poblaci�n, igual a 4. Calcular el
# estadistico z para la prueba de hip�tesis del enunciado.
 
� = 10
varianza = 4
sum = c(10,11.25,13.75,11.5,10.25,12.5,11.5,10.75,13.75)
P1 = (mean(sum)- �)/(sqrt(varianza/length(sum)))
P1
 

 
###PREGUNTA 2 ###
# Seg�n ese valor de z, elige la respuesta apropiada:
#	1- rechazo H // H es poco veros�mil
#	2- no se ha hallado una diferencia estad�sticamente significativa
# RESPOSTA:
# Si P1 negativo, marcariamos la 2
# Si P1 superior a '1', marcariamos la 1


 
### PREGUNTA 3 ###
# Supongamos que no tenemos datos sobre la desviaci�n est�ndar de la poblaci�n.
# Calcule la desviaci�n est�ndar de la muestra.    
 
sd(sum)



### PREGUNTA 4 ### 
# Calcule el estad�stico t seg�n la desviaci�n est�ndar de la muestra (d� al
# menos tres decimales correctos).    
 
� = 10
P4 = (mean(sum)- �)/(sd(sum)/sqrt(length(sum)))
P4



### PREGUNTA 5 ### 
# Halle el P valor asociado a la prueba, con cuatro decimales de precisi�n.  

# CAS P4 > 0: 
P5 = (1-pt(P4, length(sum)-1))
P5
# CAS P4 < 0
P4 = -P4
P5 = pt(P4,length(sum)-1)
P5

 
 
### PREGUNTA 6 ### 
# CAS 1:
# Valore una conclusi�n seg�n ese valor de t: 
# 	1- la muestra es escasa, o los nuevos modelos se comportan como los 
#		anteriores
# 	2- con riesgo 5%, podemos afirmar que las nuevas bater�as duran m�s en
#		media 
# RESPOSTA:
# Si P5 mas cerca de 1 que de 0, la respuesta es escasa (1)

# CAS 2: 
# 	1- el rendimiento ha mejorado
# 	2- la muestra es escasa, o los nuevos modelos se comportan como los anteriores 
# RESPOSTA:
# Si P5 cerca de 0, la respuesta es rendimiento mejorado (1)


 
### PREGUNTA 7 ###
# Si se quiere estimar la duraci�n media con un intervalo de confianza al 8%,
# �qu� obtenemos con esta muestra?
# Introducir primero el extremo inferior y luego el superior, con un espacio
# intermedio. Dos decimales correctos.
 
conf = 0.80
C = 1-conf
L = length(sum)
S = sd(sum)
P71 = mean(sum)-qt(1-(C/2),L-1)*(S/sqrt(L))
P72 = mean(sum)+qt(1-(C/2),L-1)*(S/sqrt(L))
P71; P72 
 


### PREGUNTA 8 ### 
# Suponiendo que se pretende obtener un IC al 80% de confianza para la verdadera
# media de la duraci�n, con una amplitud del IC igual a 15 minutos, �cu�ntas
# observaciones se necesitan, asumiendo una desviaci�n tipo poblacional igual a
# 60 minutos? Redondee por exceso el resultado.   
 
destp = 60 	# desviacio tipus de la P8
amplitud = 15 	# amplitud de IC
P8 = mostres <- ((2*1.282*destp)/amplitud)^2
P8



.