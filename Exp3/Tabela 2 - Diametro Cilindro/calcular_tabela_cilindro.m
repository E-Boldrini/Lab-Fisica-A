% - Esta função recebe 3 medidas do diâmetro de um cilindro e a incerteza do instrumento,
% e retorna um vetor com os seguintes valores:

 %- O diâmetro médio
 %- O desvio padrão do diâmetro
 %- O desvio padrão da média
 %- A incerteza combinada do diâmetro
% - Retornar valores

function [res] = calcular_tabela_cilindro(diam1, diam2, diam3, incerteza_instrumento)

  D = [diam1, diam2, diam3];
  res = calcularValores(D, incerteza_instrumento);

  end
