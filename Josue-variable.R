lkDTA="https://github.com/guido-laguna/TrabajoEstad2/raw/master/DataEst2.sav"
reudepadres=import(lkDTA)

head(reudepadres)
str(reudepadres)
reudepadres[,c(-1,-33)]=NULL
names(reudepadres) = c("pais","cp7asistencia")

#Reemplazar valores
reudepadres$pais <- gsub("11","Perú",reudepadres$pais)
reudepadres$cp7asistencia <- gsub("1","Una vez a la semana",reudepadres$cp7asistencia)
reudepadres$cp7asistencia <- gsub("2","Una o dos veces al mes",reudepadres$cp7asistencia)
reudepadres$cp7asistencia <- gsub("3","Una o dos veces al año",reudepadres$cp7asistencia)
reudepadres$cp7asistencia <- gsub("4","Nunca",reudepadres$cp7asistencia)
#Verificamos la estructura
str(reudepadres)


