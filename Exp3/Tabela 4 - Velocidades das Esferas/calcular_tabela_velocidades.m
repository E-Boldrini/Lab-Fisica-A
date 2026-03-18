 %Esta função recebe a distância percorrida por uma esfera, o tempo médio que ela levou para percorrer essa distância
 %e as incertezas associadas a cada medida.
 %Além disso, recebe a média do raio dessa esfera e a média do diâmetro do cilindro.
 %OBS.: Tanto a distância quanto o tempo estão no CGS
 %Ela retorna um vetor com os seguintes valores:

 % - A velocidade limite no cilindro
 % - O desvio padrão da velocidade limite no cilindro
 % - x
 % - f
 % - A velocidade limite no infinito
 % - O desvio padrão velocidade limite no infinito

function res  = calcular_tabela_velocidades (distPercorrida, tempoMedio, Idist, Itempo, medRaio, medDiametroCilindro)

  %calcula a velocidade limite no cilindro
	VelocidadeLimite = distPercorrida/tempoMedio;

  %calcula x
	x = (9*medRaio)/(2*medDiametroCilindro);

  %calcula f
	f = (1 + x + x^2);

  %calcula a velocidade limite no infinito
	VelocidadeLimiteInfinito = f*VelocidadeLimite;

  %calcula as incertezas (CONFERIR):
  IVelocidadeLimite = VelocidadeLimite*sqrt((Idist/distPercorrida)^2 + (Itempo/tempoMedio)^2);
	IVelocidadeLimiteInfinito = f*IVelocidadeLimite;

  %organiza tudo em um vetor
	res = [VelocidadeLimite, IVelocidadeLimite, x, f, VelocidadeLimiteInfinito, IVelocidadeLimiteInfinito];

end

