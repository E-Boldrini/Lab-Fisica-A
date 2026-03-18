%Função que recebe a velocidade terminal no cilindro, o raio ḿédio da esfera
% e a viscosidade cinemática, e imprime na tela o número de Reynolds

function = calcular_num_reynolds(velocidadeTerminal, medRaio, viscCinematica)
	Re = (velocidadeTerminal * 2 * medRaio) / viscCinematica;
	printf("Re = %.4f\n", Re);
	end
