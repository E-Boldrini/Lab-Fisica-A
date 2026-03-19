
function imprimirValores (m, k)
    T = calcularValores(m,k);
    disp(["Media: ", num2str(T(1)) ])
    disp(["DesvPad: ", num2str(T(2)) ])
    disp(["DesvPadMedia: ", num2str(T(3)) ])
    disp(["Incerteza Combinada: ", num2str(T(4)) ])
end
