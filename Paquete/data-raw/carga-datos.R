# Cargar los archivos de excel
library(readxl)
equipos <- read_excel("data-raw/equipos.xlsx")
jugadores <- read_excel("data-raw/jugadores.xlsx")

# Guardar los datasets en formato .rda dentro de la carpeta data/
library(usethis)
use_data(equipos, jugadores, overwrite = TRUE)
