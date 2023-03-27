## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
function [L, A, P, b] = ludecomp(A, b)
    [nl, nc] = size([A b]);
    L = eye(nl);
    P = eye(nl);

    for k = 1:nl - 1
        [maior, i] = max(abs([A b](k:nl, k)));
        ipr = i + k -1;

        if ipr != k
            A([k, ipr], :) = A([ipr, k], :);
            P([k, ipr], :) = P([ipr, k], :);
            b([k, ipr]) = b([ipr, k]);
        endif

        for i = k + 1:nl
            L(i, k) = [A b](i, k) / [A b](k, k);
            A(i, k:nl) -= (L(i, k) * A(k, k:nl));
            b(i) -= (L(i, k) * b(k));''
        endfor

    endfor

endfunction
