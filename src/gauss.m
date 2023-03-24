## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14


% A = Matriz de coeficientes
% b = Matriz de 
function [A, b] = gauss (A, b)
    [nl, nc] = size(A);
    % percorrendo as linhas até a penúltima
    for k = 1:nl - 1
        % Percorrendo as linhas abaixo do pivo da linha atual
        for i = k + 1:nl
            m = A(i, k) / A(k, k);
            % Percorrendo os elementos restantes da linha
            for j = k:nc
                A(i, j) -= (m * A(k, j));
            endfor

            b(i) -= (m * b(k));

        endfor

    endfor

endfunction
