% --- Script para Análise de Dados: Experimento Queda Livre ---
clc; clear;

% 1. CONSTANTES DO EXPERIMENTO
f = 60.0;          % Frequência em Hz
sig_f = 0.1;       % Incerteza da frequência em Hz
sig_DS = 0.05;     % Incerteza da régua em cm (0.05 cm)

% 2. DADOS MEDIDOS NO LABORATÓRIO
% Coloque os valores de Delta_sn medidos para cada ponto n
% O vetor n seque a ordem dos pontos sugeridos pela tabela do experimento
n = [1, 2, 5, 6, 9, 10, 13, 14, 17, 18];
DS_medidos = [0.55, 0.82, 1.65, 1.93, 2.75, 3.02, 3.85, 4.12, 4.95, 5.22]; % Lembre que são 10 valores (em cm)

% 3. CÁLCULOS INTERMEDIÁRIOS
T = 1 / f;                  % Período
sig_T = sig_f / (f^2);      % Incerteza do período
Dt = 2 * T;                 % Intervalo de tempo entre n-1 e n+1
sig_Dt = 2 * sig_T;         % Incerteza do Delta_t

% 4. CÁLCULOS DA TABELA
tn = n * T;                 % Tempo no ponto n
sig_tn = n * sig_T;         % Incerteza de tn
vn = DS_medidos / Dt;       % Velocidade vn = Delta_sn / Delta_tn

% 5. PROPAGAÇÃO DE INCERTEZA DA VELOCIDADE
rel_DS = sig_DS./DS_medidos;
rel_f = sig_f/f;
sig_vn = vn .* sqrt(rel_DS.^2 + rel_f^2);

% 6. EXIBIÇÃO DOS RESULTADOS
fprintf('\nTABELA DE DADOS PROCESSADOS\n');
fprintf('--------------------------------------------------------------------------------------\n');
fprintf('n  | tn (s) | sig_tn (s) | DSn (cm) | vn (cm/s) | sig_vn (cm/s) | vn +/- sig_vn\n');
fprintf('--------------------------------------------------------------------------------------\n');

for i = 1:length(n)
    fprintf('%d  | %.4f |  %.6f  |  %.4f  |  %.4f  |     %.4f     | %.4f +/- %.4f\n', ...
            n(i), tn(i), sig_tn(i), DS_medidos(i), vn(i), sig_vn(i), vn(i), sig_vn(i));
end
fprintf('--------------------------------------------------------------------------------------\n');



% --- 7. GERAÇÃO DO GRÁFICO E AJUSTE LINEAR ---

% Realiza a regressão linear: v(t) = g*t + v0
% p(1) será o coeficiente angular (gravidade g)
% p(2) será o coeficiente linear (velocidade inicial v0)
p = polyfit(tn, vn, 1);
v_ajuste = polyval(p, tn); % Calcula os pontos da reta de ajuste

g_cm_s2 = p(1);            % Gravidade em cm/s^2
g_m_s2 = g_cm_s2 / 100;    % Converte para m/s^2
v0 = p(2);                 % Velocidade inicial em cm/s

% Criação do Gráfico
figure; % Abre uma nova janela
plot(tn, vn, 'ro', 'MarkerSize', 8, 'LineWidth', 2); % Plota os pontos medidos em vermelho
hold on; % Mantém os pontos no gráfico para plotar a reta por cima
plot(tn, v_ajuste, 'b-', 'LineWidth', 2); % Plota a reta de ajuste em azul

% Configurações de visualização
grid on;
xlabel('Tempo (s)');
ylabel('Velocidade (cm/s)');
title('Ajuste Linear: Movimento de Queda Livre');
legend('Dados Experimentais', sprintf('Ajuste: v = %.2f*t + %.2f', p(1), p(2)));

% Exibe os resultados no console
fprintf('\n--- RESULTADOS DO AJUSTE LINEAR ---\n');
fprintf('Aceleração da gravidade (g): %.4f m/s^2\n', g_m_s2);
fprintf('Velocidade inicial (v0): %.2f cm/s\n', v0);
fprintf('------------------------------------\n');
