## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
function [A, b] = gausspivo (A, b)
    [nl, nc] = size([A b]);

    for k = 1:nl - 1
        [maior, i] = max(abs([A b](k:nl, k)));
        ipr = i + k -1;

        if ipr != k
            A([k, i], :) = A([i, k], :);
            b([k, i]) = b([i, k]);
        endif

        for i = k + 1:nl
            m = [A b](i, k) / [A b](k, k);
            A(i, k:nl) -= (m * A(k, k:nl))
            b(i) -= (m * b(k));
        endfor

    endfor

endfunction
