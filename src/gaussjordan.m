## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
% AI = Matriz Ampliada com identidade
function [A, b, AI, AS] = gaussjordan (A, b)
    [nl, nc] = size(A);
    AI = eye(nl);
    AS = [A eye(nl) b];

    for k = 1:nc
        % [maior, i] = max(abs(A(k:nl, k)));
        % ipr = i +k -1;

        % if ipr != k
        %     A([k, ipr], :) = A([ipr, k], :);
        %     AI([k, ipr], :) = AI([ipr, k], :);

        %     b([k, ipr]) = b([ipr, k]);
        % endif

        b(k) /= A(k, k);
        AI(k, :) /= A(k, k);
        A(k, :) /= A(k, k);

        AS(k, :) /= AS(k, k);

        for i = 1:nl

            if i != k
                m = A(i, k);
                m2 = AS(i, k);

                A(i, :) -= m * A(k, :);
                AI(i, :) -= m * AI(k, :);
                b(i) -= (m * b(k));

                AS(i, :) -= m2 * AS(k, :);
            endif

        endfor

    endfor

endfunction
