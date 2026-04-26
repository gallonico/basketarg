# ============================================================
# LIBRERÍAS
# ============================================================

library(readxl)
library(usethis)


# ============================================================
# CARGA Y PREPARACIÓN DE DATOS PARA EL PAQUETE
# ============================================================

# ------------------------------
# Carga de archivos Excel
# ------------------------------

equipos <- read_excel("data-raw/equipos.xlsx")
jugadores <- read_excel("data-raw/jugadores.xlsx")

# ------------------------------
# Eliminación de variables auxiliares innecesarias
# ------------------------------

equipos <- equipos[, !names(equipos) %in% c("source", "df")]

jugadores <- jugadores[, !names(jugadores) %in% c("source", "df")]

# ------------------------------
# Guardado de datasets en formato .rda
# ------------------------------

use_data(equipos, jugadores, overwrite = TRUE)
