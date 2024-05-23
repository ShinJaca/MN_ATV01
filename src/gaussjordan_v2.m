## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
% AI = Matriz Ampliada com identidade
function [A, b, AI] = gaussjordan_v2 (A, b)
    [nl, nc] = size(A);
    AS = [A eye(nl) b];

    for k = 1:nc
        AS(k, :) /= AS(k, k);

        for i = 1:nl

            if i != k
                m = AS(i, k);
                AS(i, :) -= m * AS(k, :);
            endif

        endfor

    endfor

    A = AS(:, [1:nc]);
    AI = AS(:, [nc + 1:nc * 2]);
    b = AS(:, nc * 2 + 1);
endfunction
