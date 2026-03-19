%Função que recebe um vetor com os valores calculados na tabela dos diametros do cilindro e mostra os resultados na tela

function [] = print_tabela_diametros_cilindro(res)
  fprintf('\n========= RESULTADOS PARA A TABELA DO CILINDRO =========\n');
  fprintf('Diâmetro Médio (mm):      %.4f\n', res(1));
  fprintf('Std Diâmetro (mm):      %.4f\n', res(2));
  fprintf('Std Diâmetro Médio (mm): %.4f\n', res(3));
  fprintf('incerteza_comb (mm):     %.4f\n', res(4));
  fprintf('=======================================================\n');
  end
