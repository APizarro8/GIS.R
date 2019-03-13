#################################################################
#Descargar librerias
require(raster)
require(rgdal)

################ RECORTAR RASTER CON SHAPE #####################

#DIRECTORIO DE TRABAJO
setwd('D:/TFM_BIOMASA/Prueba_2')
getwd()

#OBTENER LISTA DE ARCHIVOS EN CARPETA
b<- list.files()

#ENUMERAR ARCHIVO A RECORTAR SEGUN SU NUMERACION EN CARPETA 
r<- brick(b[16])

#CAPA SHAPE PARA EL RECORTE
shape<- shapefile('Encinares.shp')
plot(shape)
gredos<- mask(r,shape)
plot(gredos)

#SALIDA RECORTE RASTER
writeRaster(gredos,filename = 'MDD2_16Z22_clip45.tif')

################################################################
