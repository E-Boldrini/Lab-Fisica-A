% - Esta função recebe 4 medidas do diâmetro de 4 esferas diferentes e a incerteza do instrumento,
% e retorna um vetor com os seguintes valores:

 %- O diâmetro médio
 %- O desvio padrão do diâmetro
 %- O desvio padrão da média
 %- A incerteza combinada do diâmetro
 %- Raio médio
 %- A incerteza combinada do raio médio
 %- O raio ao quadrado médio
 %- A incerteza combinada do raio ao quadrado médio
% - Retornar valores

function [res] = calcular_tabela_diam(diam1, diam2, diam3, diam4, incerteza_instrumento)
  D = [diam1, diam2, diam3, diam4];
  diam_medio = mean(D);
  std_diam = std(D);
  std_media_diam = std_diam/2;
  incerteza_comb_diam = sqrt(incerteza_instrumento^2+std_media_diam^2);
  raio_medio = diam_medio/2;
  incerteza_comb_raio = incerteza_comb_diam/2;
  raio_quad_medio = raio_medio^2;
  incerteza_comb_raio_quad = 2*(incerteza_comb_raio/raio_medio)*raio_quad_medio;

  %organiza tudo em um vetor de saída
  res = [diam_medio, std_diam, std_media_diam, incerteza_comb_diam, raio_medio, incerteza_comb_raio, raio_quad_medio, incerteza_comb_raio_quad];
end
