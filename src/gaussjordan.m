## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
% AI = Matriz Ampliada com identidade
function [A, b, AI] = gaussjordan (A, b)
    [nl, nc] = size(A);
    AI = eye(nl);

    for k = 1:nc
        [maior, i] = max(abs(A(k:nl, k)));
        ipr = i +k -1;

        if ipr != k
            A([k, ipr], :) = A([ipr, k], :);
            AI([k, ipr], :) = AI([ipr, k], :);

            b([k, ipr]) = b([ipr, k]);
        endif

        b(k) /= A(k, k);
        AI(k, :) /= A(k, k);
        A(k, :) /= A(k, k);

        for i = 1:nl

            if i != k
                m = A(i, k);
                A(i, :) -= m * A(k, :);
                AI(i, :) -= m * AI(k, :);
                b(i) -= (m * b(k));
            endif

        endfor

    endfor

endfunction
