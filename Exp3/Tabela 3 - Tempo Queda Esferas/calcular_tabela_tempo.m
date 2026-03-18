% - Esta função recebe o tempo de queda de 4 esferas diferentes e a incerteza do instrumento,
% e retorna um vetor com os seguintes valores:

 %- O tempo médio de queda
 %- O desvio padrão do tempo de queda
 %- O desvio padrão do tempo médio de queda
 %- A incerteza combinada do tempo médio de queda
% - Retornar valores

function [res] = calcular_tabela_tempo (t1, t2, t3, t4, incerteza_instrumento)
 T = [t1, t2, t3, t4];
 %organiza tudo em um vetor de saída
  res = calcularValores(T, incerteza_instrumento);
endfunction
