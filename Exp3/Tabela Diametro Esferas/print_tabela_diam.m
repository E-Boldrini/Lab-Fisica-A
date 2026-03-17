
%Função que recebe um vetor com os valores calculados na tabela dos diametros e mostra os resultados na tela

function [] = print_tabela_diam(res)
  fprintf('\n========= RESULTADOS PARA A TABELA DIAMETRO =========\n');
  fprintf('diam_medio (mm):      %.4f\n', res(1));
  fprintf('std_diam (mm):      %.4f\n', res(2));
  fprintf('std_media_diam(mm): %.4f\n', res(3));
  fprintf('incerteza_comb_diam (mm):     %.4f\n', res(4));
  fprintf('raio_medio (mm):      %.4f\n', res(5));
  fprintf('incerteza_comb_raio (mm):     %.4f\n', res(6));
  fprintf('raio_quad_medio (mm^2):        %.4f\n', res(7));
  fprintf('incerteza_comb_raio_quad (mm^2):  %.4f\n', res(8));
  fprintf('=======================================================\n');
  end
