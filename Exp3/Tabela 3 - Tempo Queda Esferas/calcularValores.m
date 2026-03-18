
%Função que recebe um vetor de medidas e um vetor de incertezas, e retorna:
% A média das medidas
% O desvio padrão
% O desvio padrão da média
% Incerteza combinada

function [T] = calcularValores (medidas, incertezas)
    media = mean(medidas);
    desvPad = std(medidas);
    desvPadMedia = desvPad/sqrt(length(medidas));
    incertezaCombinada = sqrt(desvPadMedia^2 + sum(incertezas^2));
    T = [media, desvPad, desvPadMedia, incertezaCombinada];
end
