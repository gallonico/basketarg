# Cargar los archivos de excel
library(readxl)
equipos <- read_excel("data-raw/equipos.xlsx")
jugadores <- read_excel("data-raw/jugadores.xlsx")

# Eliminar variables innecesarias
equipos <- equipos[, !names(equipos) %in% c("source", "df")]
jugadores <- jugadores[, !names(jugadores) %in% c("source", "df")]

# Guardar los datasets en formato .rda dentro de la carpeta data/
library(usethis)
use_data(equipos, jugadores, overwrite = TRUE)
