
# PROBLEMA 1 ----

# A partir de la siguiente tabla de decisión, aplicar los métodos de decisión bajo 
# incertidumbre por separados, tanto para el caso favorable (beneficios) como para 
# el caso desfavorable (costos).

#                                      e1  e2  e3
#                                 _______
#                                 d1 | 30  50  20
#                                 d2 | 40  60  10
#                                 d3 | 10  70  30
#                                 d4 | 50  40  40

source("teoriadecision_funciones_incertidumbre.R")

tabla_1 = crea.tablaX(c(30,50,20,
                        40,60,10,
                        10,70,30,
                        50,40,40), numalternativas = 4, numestados = 3)
tabla_1


## CASO FAVORABLE (beneficios) ----

### Criterio pesimista (Wald) ----
sol_pes = criterio.Wald(tabla_1, favorable = T)
sol_pes
names(sol_pes$AlternativaOptima) #La mejor decisión será la alternativa "d4".

### Criterio optimista ----
sol_opt = criterio.Optimista(tabla_1, favorable = T)
sol_opt
names(sol_opt$AlternativaOptima) #La mejor decisión es la alternativa "d3".

### Criterio de Hurwicz ----
sol_hur = criterio.Hurwicz(tabla_1, favorable = T)
sol_hur
names(sol_hur$AlternativaOptima) #La mejor decisión es la alternativa "d4".

### Criterio de Savage ----
sol_sav = criterio.Savage(tabla_1, favorable = T)
sol_sav
names(sol_sav$AlternativaOptima) #La mejor decisión es la alternativa "d1".

### Criterio de Laplace ----
sol_lap = criterio.Laplace(tabla_1, favorable = T)
sol_lap
names(sol_lap$AlternativaOptima) #La mejor decisión es la alternativa "d4".

### Criterio del punto ideal ----
sol_pid = criterio.PuntoIdeal(tabla_1, favorable = T)
sol_pid
names(sol_pid$AlternativaOptima) #La mejor decisión es la alternativa "d4".




## CASO DESFAVORABLE (costos) ----

### Criterio pesimista (Wald) ----
sol_pes = criterio.Wald(tabla_1, favorable = F)
sol_pes
names(sol_pes$AlternativaOptima) #La mejor decisión son las alternativas "d1" y "d4".

### Criterio optimista ----
sol_opt = criterio.Optimista(tabla_1,favorable = F)
sol_opt
names(sol_opt$AlternativaOptima) #La mejor decisión son las alternativas "d2" y "d3".

### Criterio de Hurwicz ----
sol_hur = criterio.Hurwicz(tabla_1, favorable = F)
sol_hur
names(sol_hur$AlternativaOptima) #La mejor decisión es la alternativa "d1".

### Criterio de Savage ----
sol_sav = criterio.Savage(tabla_1, favorable = F)
sol_sav
names(sol_sav$AlternativaOptima) #La mejor decisión es la alternativa "d1".

### Criterio de Laplace ----
sol_lap = criterio.Laplace(tabla_1, favorable = F)
sol_lap
names(sol_lap$AlternativaOptima) #La mejor decisión es la alternativa "d1".

### Criterio del punto ideal ----
sol_pid = criterio.PuntoIdeal(tabla_1, favorable = F)
sol_pid
names(sol_pid$AlternativaOptima) #La mejor decisión es la alternativa "d1".






# PROBLEMA 2 ----

# Una empresa manufacturera necesita seleccionar un proveedor de materiales para un 
# proyecto importante. Existen tres proveedores (A, B y C), y la elección afectará 
# tanto el costo como la calidad de los materiales recibidos, lo que influirá en la 
# rentabilidad total del proyecto. Sin embargo, debido a la incertidumbre en el 
# mercado y factores externos como la disponibilidad de materiales y fluctuaciones 
# de precios, el rendimiento de cada proveedor puede variar según tres posibles 
# escenarios económicos: favorable, moderado o desfavorable.
# 
# - En un escenario favorable, el proveedor A ofrece el mayor rendimiento en términos 
#   de rentabilidad.
# 
# - En un escenario moderado, el proveedor B es más confiable en términos de calidad 
#   y tiempo de entrega, lo que minimiza los costos de producción.
# 
# - En un escenario desfavorable, el proveedor C, aunque menos rentable en otros 
#   escenarios, logra mantener precios y tiempos de entrega estables, por lo que es 
#   el de menos riesgo.
# 
# La empresa ha estimado el rendimiento (en miles de euros) que cada proveedor 
# ofrecería en cada uno de los escenarios económicos:

#                    Esc.favorable  Esc.moderado  Esc.desfavorable
#                   -------------------------------------------------- 
#       Proveedor A |    80             40              10
#       Proveedor B |    70             50              20
#       Proveedor C |    60             30              25

# La empresa busca maximizar su rendimiento, pero también desea evitar pérdidas 
# significativas en caso de que se presente un escenario económico desfavorable.
# Entonces, ¿cuál proveedor debería elegir la empresa para obtener el mejor 
# rendimiento en condiciones de incertidumbre?

# Resuelve este problema haciendo uso de la función R que devuelve la resolución
# de todos los métodos en una única tabla.

source("teoriadecision_funciones_incertidumbre.R")

tabla_2 = crea.tablaX(c(80,40,10,
                        70,50,20,
                        60,30,25), numalternativas = 3, numestados = 3)
tabla_2

criterio.Todos(tabla_2, favorable = T)





