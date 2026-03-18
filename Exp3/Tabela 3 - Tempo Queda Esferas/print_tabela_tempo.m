
%Função que recebe um vetor com os valores calculados na tabela dos diametros e mostra os resultados na tela

function [] = print_tabela_tempo(res)
  fprintf('\n========= RESULTADOS PARA A TABELA DE TEMPO =========\n');
  fprintf('tempo_medio (s):      %.4f\n', res(1));
  fprintf('std_tempo (s):      %.4f\n', res(2));
  fprintf('std_media_tempo(s): %.4f\n', res(3));
  fprintf('incerteza_comb (s):     %.4f\n', res(4));
  fprintf('=======================================================\n');
  end
