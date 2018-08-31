rm(list=ls()) 

########################
# Tarea 1 - Básicos  ### 
########################

# El punto de esta tarea es que practiquen todo lo que aprendienron en la primera clase
# Pero también que, usando la misma lógica, investiguen como hacer 2 cosas que no les enseñé
# porque el 70% de saber usar R es saber googolear ayuda
# Obviamente la tarea es optativa, pero les recomiendo hacerla, trabarse, volverse a trabar - 

# Básicos #


# 1) Calcula en el script pero SIN guardar el resultado la multiplicación de la suma de dos números que tú eligas
# osea  x * (y + z) y escribelo aquí: 5*(7+8)


# 2) Crea un objeto que se llame "numero_1" que contenga el producto de 5 * 10
numero_1=5*10

# 3) Crea un vector numérico de 5 números consecutivos, empezando en 5 y acabando en 9 y llamale vector_1
vector_1=c(5,6,7,8,9)

# 4) Multiplica todos los elementos de tu vector por "numero_1" y guardalo en un objeto que se llame "vector_2"
vector_2=vector_1*numero_1

# 5) Transforma el vetor numérico vector_2 en un vector de caracter; asegurate de que funcionó con str() 
#    Hint: para reemplazar, solo tienes que guardarlo usando el mismo nombre
vector_2=factor(vector_2,labels=c("A","B","C","D","E"))
str(vector_2)
# 6) Crea dos objetos, uno que sea tu apellido y otro tu nombre y pégalos en un objeto usando paste() y llamalo "minombre"
#  luego dile a R que te llame por tu nombre (que en la consola aparezca tu nombre, pues) #NO ENCONTRÉ CÓMO EN NINGÚN LADO
nombre = "Eyal"
apellido = "Gittler"
minombre=paste(nombre, apellido, sep=" ")

# 7) Transforma minombre en un factor
#  Hint: si existe la funcion as.data.frame ¿Cómo se llamará la funcion para volver algo factor/numerico/caracter/matriz?
minombre= as.factor(minombre)

# 8) Transforma minombre en un vector numérico, ve que pasa usando str() e imprimiendo todos sus elementos
minombre=as.numeric(1:3)
str(minombre)

# 9) limpia tu espacio de trabajo (borra todos los objetos)
rm(apellido,nombre,minombre,vector_1,vector_2,numero_1)

# 10) crea una matriz de 20 renglones y 3 columnas y llenalo con números aleatorios
#     Hint: necesitas o 20 * 3 = 60 números para llenarla completamente
matriz_1=matrix(sample(1:10,60,replace=T),nrow=20,ncol=3)

# 11) Vuelve esa matriz una base de datos llamada base_de_datos
base_de_datos=as.data.frame(matriz_1)

# 12) genera un vector de caracter de 3 elementos, llama el vector "nombres_futuros"
# y a los elementos "primer_variable" , "segunda_variable", "tercera_variable"
nombres_futuros=c("primer_variable","segunda_variable","tercera_variable")

# 13) usando la función names() ve como se llaman todas las variables de base_de_datos
names(base_de_datos)

# 14) sustituye en un solo comando todos los nombres de base_de_datos por "nombres_futuros"
names(base_de_datos)=nombres_futuros

# 15) tira segunda_variable de tu base
base_de_datos$segunda_variable=NULL
str(base_de_datos)

# 16) crea una variable que se llame "variable_nueva" que sea una variable lógica y siempre sea TRUE
variable_nueva=c(T)

# 17) haz un summary de la base completa y luego uno solo de la nueva variable 
summary(base_de_datos)
summary(variable_nueva)

# 18) tabula una variable de tu base 
table(base_de_datos$primer_variable)

# Les voy a pedir que exporten esa base después, asi que no la tiren ni nada 
# ¡Van super bien! R es horrible hasta que ya aprendes a hablarlo y entonces es increible


# Directorios e Importación de Bases de Datos #
# Vayan a la carpeta de la clase 1


# 19) Creen un directorio que se llame input y lleve a la carpeta que se llama "datos" y creen 
#     otro directorio que lleve a una carpeta nueva (que ustedes creen) que se llame "tarea" 
input="/Users/eyalgittler/Documents/ITAM/ONCEAVO SEMESTRE/ICA/IntroAR-master/datos"
tarea="/Users/eyalgittler/Documents/ITAM/ONCEAVO SEMESTRE/ICA/IntroAR-master/Tareas"

# 20) importen a un objeto llamado base_stata la base de datos que se llama BaseMunFW.dta
#     Hint: el dta es un formato no nativo a R, por lo que necesitan prender el paquete foreign para importarla
install.packages("foreign")
require(foreign)
base_stata=read.dta(paste(input,"BaseMunFW.dta",sep="/"))
str(base_stata)

# 21) creen otro objeto que se llame base_excel donde importen snsp_mun_nm1517.xlsx
install.packages("readxl")
require(readxl)
base_excel=read_excel(paste(input, "snsp_mun_nm1517.xlsx", sep="/"))
str(base_excel)

# 22) quedense sólo con los homicidios de esa base 
# Hint: acuerdense como funciona los [] para hablar de renglones-columnas y el símbolo de $ para variables
###????

# 23) exporten base_de_datos usando su directorio 'tarea' a un archivo de csv que se llame "mitarea.csv"
write.csv(base_de_datos, paste(tarea, "mitarea.cvs", sep="/"))

