#################################################################
#Descargar librerias
require(raster)
require(rgdal)

################ RECORTAR RASTER CON SHAPE #####################

#DIRECTORIO DE TRABAJO
setwd('XXXX')
getwd()

#OBTENER LISTA DE ARCHIVOS EN CARPETA
b<- list.files()

#ENUMERAR ARCHIVO A RECORTAR SEGUN SU NUMERACION EN CARPETA 
r<- brick(b[X])

#CAPA SHAPE PARA EL RECORTE
shape<- shapefile('XXXX.shp')
plot(shape)
gredos<- mask(r,shape)
plot(gredos)

#SALIDA RECORTE RASTER
writeRaster(gredos,filename = 'XXXXX.tif')

################################################################
