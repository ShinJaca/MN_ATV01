## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

% A = Matriz de coeficientes
% b = Matriz de
function [L, A, P, b] = ludecomp(A, b)
    [nl, nc] = size([A b]);
    L = eye(nl);
    P = eye(nl);

    for k = 1:nl - 1
        % Detecta o indice do maior pivô PARTINDO de k (i=1 é a própria linha
        % atual)
        [maior, i] = max(abs([A b](k:nl, k)));
        ipr = i + k -1;
        % Caso o indice não seja daquela linha, realiza a troca com a maior
        if ipr != k
            A([k, ipr], :) = A([ipr, k], :);
            P([k, ipr], :) = P([ipr, k], :);
            b([k, ipr]) = b([ipr, k]);
        endif
        % Eliminação com formação da matriz L
        for i = k + 1:nl
            L(i, k) = [A b](i, k) / [A b](k, k);
            A(i, k:nl) -= (L(i, k) * A(k, k:nl));
            b(i) -= (L(i, k) * b(k));
        endfor

    endfor

endfunction
