#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl, xlab="Cilindros",
     ylab="Millas por Galón", main="Relación Cilindros y Millas por Galón")

plot(mtcars$mpg ~ mtcars$hp, xlab="Caballos de Fuerza",
     ylab="Millas por Galón", main="Relación Caballos de Fuerza y Millas por Galón")

#EDA orangeec
plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inversión Educación (%PIB)",
     ylab="Desempleo", main="Relación inversión en educación y desempleo")

plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte economía naranja al PIB(%)",
     ylab="PIB per cápita", main="Relación economía naranja y PIB per cápita")

#histograma mtcars qplot
qplot(mtcars$hp, geom="histogram", xlab="Caballos de Fuerza",
      main="Carros según caballos de fuerza")

ggplot(mtcars, aes(x=hp))+ geom_histogram() +
  labs(x="Caballos de Fuerza", y="Cantidad de Carros",
  title="Caballos de Fuerza en Carros seleccionados") +
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=hp))+ geom_histogram(binwidth = 30) +
  labs(x="Caballos de Fuerza", y="Cantidad de Carros",
  title="Caballos de Fuerza en Carros seleccionados") +
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data=mtcars, aes(x=hp), fill="blue", color="red",
                          binwidth = 20) + 
  labs(x="Caballos de Fuerza", y="Cantidad de Carros",
       title="Caballos de Fuerza en caballos seleccionados") + 
  xlim(c(80,280)) + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot() + geom_histogram(data=orangeec, aes(x=GDP.PC), fill="blue", color="red",
                          binwidth = 2000) + 
  labs(x="pib per cápita", y="Cantidad de países",
       title="PIB per cápita en países latam") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot() + geom_histogram(data=orangeec, aes(x=Creat.Ind...GDP), fill="blue", color="red",
                          binwidth = 1) + 
  labs(x="Aporte economía naranja al pib(%)", y="Cantidad de países",
       title="Contribución Economía Naranja al pib en países latam") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data=orangeec, aes(x=Internet.penetration...population), fill="red", color="yellow",
                          binwidth = 5) + 
  scale_x_continuous(breaks = seq(40, max(100), 5))+
  labs(x="Penetración internet(%)población", y="Cantidad de países",
       title="Penetración de internet en países latam") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#boxplot
boxplot(mtcars$hp, ylab="Caballos de Fuerza",
        main="Caballos de Fuerza en carros mtcars")
#
ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl)) + 
  geom_boxplot(alpha=0.6) + 
  labs(x="cilindros", y="caballos de fuerza",
       title="Caballos de Fuerza según cilindros en mtcars") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=am, y=mpg, fill=am))+
  geom_boxplot() + 
  labs(x="Tipo de caja", y="Millas por galón",
       title="Millas por galón según tipo de caja-mtcars")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

mtcars$am <- factor(mtcars$am, levels=c(1,0), labels=c("Manual", "Automático"))


economy <- mean(orangeec$GDP.PC)
economy

#
orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                                 "Por debajo promedio pib per cápita",
                                 "Sobre-Arriba promedio pib per cápita"))

#
ggplot(orangeec, aes(x=Strong_economy, y=Creat.Ind...GDP,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4) + 
  labs(x="Tipo de país", y="Aporte economía naranja al pib",
       title="Aporte economía naranja al pib países latam con alto y bajo pib
       per cápita") +
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot(orangeec, aes(x=Strong_economy, y=Internet.penetration...population,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4) + 
  labs(x="Tipo de país", y="Penetración de Internet(%)",
       title="Penetración de Internet en países latam con alto y bajo pib
       per cápita") +
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#scatter plot con ggplot en mtcars - dos variables
ggplot(mtcars, aes(hp, mpg)) + 
  geom_point() + 
  labs(x="Caballos de Fuerza", y="Millas por Galón",
       title="Relación caballos de fuerza y millas por galón") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
ggplot(mtcars, aes(wt, hp)) + 
  geom_point() + 
  labs(x="Peso", y="Potencia",
       title="Relación peso-potencia") + 
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
ggplot(mtcars, aes(hp,qsec)) + 
  geom_point(aes(color=am, size=cyl)) + 
  labs(x="Caballos de Fuerza", y="Tiempo en 1/4 milla",
       title="Caballos-velocidad según cilindraje y tipo de caja")

#
ggplot(orangeec, aes(Internet.penetration...population,Creat.Ind...GDP)) + 
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..)) + 
  labs(x="Penetración Internet", y="Aporte economía naranja PIB",
       title="Internet y aporte economía naranja según economía y crecimiento pib")

ggplot(orangeec, aes(Education.invest...GDP,Unemployment)) + 
  geom_point(aes(color=factor(Strong_economy), size=X..pop.below.poverty.line)) + 
  labs(x="Inversión en Educación", y="Desempleo",
       title="Relación de inversión y Desempleo según economía y nivel de pobreza.")