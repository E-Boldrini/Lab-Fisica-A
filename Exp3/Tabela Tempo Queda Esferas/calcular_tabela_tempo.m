% - Esta função recebe o tempo de queda de 4 esferas diferentes e a incerteza do instrumento,
% e retorna um vetor com os seguintes valores:

 %- O tempo médio de queda
 %- O desvio padrão do tempo de queda
 %- O desvio padrão do tempo médio de queda
 %- A incerteza combinada do tempo médio de queda
% - Retornar valores
function [res] = calcular_tabela_tempo (t1, t2, t3, t4, incerteza_instrumento)
 T = [t1, t2, t3, t4];
 tempo_medio = mean(T);
 std_tempo = std(T);
 std_media_tempo = std_tempo/2;
 incerteza_comb = sqrt(incerteza_instrumento^2 + std_media_tempo^2);

 %organiza tudo em um vetor de saída
  res = [tempo_medio, std_tempo, std_media_tempo, incerteza_comb];
endfunction
