## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

function x = substreg (A, b)
    [nl, nc] = size(A);

    x(nl, 1) = b(nl, 1) / A(nl, nl);

    for i = nl - 1:-1:1
        sum = b(i, 1);

        for j = i + 1:nc
            sum -= (A(i, j) * x(j));
        endfor

        x(i, 1) = sum / A(i, i);
    endfor

endfunction
