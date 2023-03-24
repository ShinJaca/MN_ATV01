## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
function [A, b] = gausspivo (A, b)
    Ab = [A b]
    [nl, nc] = size(Ab);

    for k = 1:nl - 1
        [maior, i] = max(abs(Ab(k:nl, k)));
        ipr = i + k -1;

        if ipr != k
            Ab([k, i], :) = Ab([i, k], :);
        endif

        for i = k + 1:nl
            m = Ab(i, k) / Ab(k, k);
            Ab(i, k:nc) -= (m * Ab(k, k:nc))
        endfor

    endfor

    A = Ab(:, 1:nl);
    b = Ab(:, nc);

endfunction
