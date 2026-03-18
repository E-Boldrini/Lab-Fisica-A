
%Função que recebe um vetor com os valores calculados na tabela dos diametros e mostra os resultados na tela

function [] = print_tabela_tempo(res)
  fprintf('\n========= RESULTADOS PARA A TABELA DE VELOCIDADES =========\n');
  fprintf('Vel_limite_cilindro(cm/s):      %.4f\n', res(1));
  fprintf('Incerteza da Vel_limite_cilindro(cm/s):      %.4f\n', res(2));
  fprintf('x(adim): %.4f\n', res(3));
  fprintf('f(adim): %.4f\n', res(4));
  fprintf('Vel_limite_infinito(cm/s):      %.4f\n', res(5));
  fprintf('Incerteza da Vel_limite_infinito(cm/s):      %.4f\n', res(6));
  fprintf('=======================================================\n');
  end
