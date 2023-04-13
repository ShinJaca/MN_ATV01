function [xk, k, Erx] = jacobi(A, b, tol, N, x0)
    [nl, nc] = size(A);
    normErx = inf;
    k = 1;
    t = 0;

    for l = 1:nl
        t = sum(abs(A(l))) - abs(A(l, l));

        if abs(A(l, l)) < t
            printf("Matriz não é diagonal dominante");
            return;
        endif

    endfor

    % Montar Matriz C
    for i = 1:nl

        for j = 1:nc

            if i == j
                C(i, j) = 0;
                d(i, 1) = b(i, 1) / A(i, i);
            else
                C(i, j) = -A(i, j) / A(i, i);
            endif

        endfor

    endfor

    xk = x0;
    xk1 = xk;
    k = 0;

    while (k < N)
        xk = C * xk1 + d;

        for i = 1:nl
            Erx(i) = abs(((xk(i) - xk1(i)) / xk(i)));
        endfor

        xk1 = xk;

        if max(Erx) < tol
            return;
        endif

        k++;

    endwhile

    if k == N
        printf("Erro de Convergência\n");
    endif

endfunction
