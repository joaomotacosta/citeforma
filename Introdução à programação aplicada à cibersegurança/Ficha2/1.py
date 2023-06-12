tempo=int(input("Quanto tempo foi a viagem (em minutos): "))
velocidade=int(input("Qual foi a velocidade média (em km/h): "))

distancia=(tempo/60)*velocidade
litros_usados=distancia/12

input("Tempo da viagem: " + str(tempo) + " minutos")
input("Velocidade média: " + str(velocidade) + " km/h")
input("Estimativa de distância percorrida: " + str(distancia) + " kilometros")
input("Estimativa de litros de combustivel gastos: " + str(litros_usados) + " litros")