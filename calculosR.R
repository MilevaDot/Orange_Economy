4+8

20 - 8

4^2

x <- 86
x

Oficina <- 7
Platzi <- 1
Transporte <- 1.5
Tiempo_al_dia <- Oficina + Platzi + Transporte
Tiempo_al_dia

Corte_1 <- 0.3
Corte_2 <- 0.3
Corte_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0

Nota_c_1 <- Nota_1*Corte_1
Nota_c_1

Nota_c_2 <- Nota_2*Corte_2
Nota_c_2

Nota_c_3 <- Nota_3*Corte_3
Nota_c_3

Nota_final <- Nota_c_1 + Nota_c_2 + Nota_c_3
Nota_final

str(mtcars)
class(mtcars$vs)

mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)

str(orangeec)

summary(orangeec)

summary(mtcars)

wt <- (mtcars$wt*1000)/2
wt

mtcars.new <- transform(mtcars,wt=wt*1000/2)
mtcars.new

summary(mtcars.new)

tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje

dias_aprendizaje <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
dias_aprendizaje

dias_mas_20min <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi
total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas
total_tiempo_adicional <- sum(total_tiempo_platzi + total_tiempo_lecturas)
total_tiempo_adicional

#matriz
tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_lecturas),
                        nrow=2, byrow=TRUE)

dias <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
Tiempo <- c("tiempo platzi", "tiempo lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix

colSums(tiempo_matrix)


final_matrix <- rbind(tiempo_matrix, c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1,5]

dias_2 <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado")
Tiempo_2 <- c("tiempo platzi", "tiempo lecturas", "Podcast")

final_matrix_2 <- cbind(final_matrix, c(10, 15, 20))
final_matrix_2
colnames(final_matrix_2) <- dias_2
rownames(final_matrix_2) <- Tiempo_2
final_matrix_2

mtcars[mtcars$cyl<6,]

orangeec[orangeec$GDP.PC >= 15000,]

orangeec[orangeec$Creat.Ind...GDP <= 2,]

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                       & Education.invest...GDP >=4.5)
neworangeec

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >=4.5,
                      select = Creat.Ind...GDP)
neworangeec

rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))

Nivel_Curso <- c("Básico", "Intermedio", "Avanzado")
Nivel_Curso

head(mtcars)
head(orangeec)

tail(mtcars)
tail(orangeec)

glimpse(orangeec)

my_vector <- 1:8
my_vector
my_matrix <- matrix(1:9, ncol=3)
my_matrix
my_df <- mtcars[1:4,]
my_df
my_list <- list(my_vector, my_matrix, my_df)
my_list