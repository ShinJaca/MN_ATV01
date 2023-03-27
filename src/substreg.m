## Author: Jaca <jaca@debSpiegel>
## Created: 2023-03-14

function x = substreg (A, b)
    [nl, nc] = size(A);

    x(nl) = b(nl) / A(nl, nl);

    for i = nl - 1:-1:1
        sum = b(i);

        for j = i + 1:nc
            sum -= (A(i, j) * x(j));
        endfor

        x(i) = sum / A(i, i);
    endfor

endfunction
