function diagonal(A)
   [nl, nc] = size(A);

    for l = 1:nl
        t = sum(abs(A(l))) - abs(A(l, l));

        if abs(A(l, l)) < t
            printf("Matriz não é diagonal dominante\n");i
            return;
        endif
        t
    endfor

    printf("Matriz com diagonal dominante\n");

endfunction
