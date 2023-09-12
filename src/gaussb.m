## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14


% A = Matriz de coeficientes
% b = Matriz de 
function Ab = gaussb (Ab)
    % nl - Número de linhas
    % nc - Número de colunas
    [nl, nc] = size(Ab);
    % percorrendo as linhas até a penúltima
    for k = 1:nl - 1
        % Percorrendo as linhas abaixo do pivo da linha atual
        for i = k + 1:nl
            m = Ab(i, k) / Ab(k, k);
            % Percorrendo os elementos restantes da linha
            for j = k:nc
                Ab(i, j) -= (m * Ab(k, j));
            endfor

            % b(i) -= (m * b(k));

        endfor

    endfor

endfunction
