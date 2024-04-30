function xn1 = secante (f, x0, x1, er, N)

    % x(n-1)
    x1n = x0;
    xn = x1;

    printf("i\txr\t\tf(xr)\t\tea\n");

    for n = 2:N
        xn1 = (x1n * f(xn) - xn * f(x1n)) / (f(xn) - f(x1n));
        ea = abs(xn1 - xn) / xn1;
        printf("%##d\t% .6f\t% .6f\t% .6f\n", i, xn1, f(xn1), ea);

        if ea < er
            printf("Raiz: % .6f\nIteração: %d\n", xn1, n);
            % printf("Raiz: % .6f\n", xn1);
            return;
        endif

        x1n = xn;
        xn = xn1;

    endfor

    printf("Método falhou em %d iterações", n);

endfunction
