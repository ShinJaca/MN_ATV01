1;
prv1

t = zeros(5, 6);
tm = zeros(5, 3);
c = zeros(5, 3);
x = zeros(10, 3);
printf("Eliminação de Gauss\n")
printf("Exec\t\tdt[s]\t\tcpu[s]\n")

for k = 1:5
    printf("%d", k)
    t(k, :) = clock();
    c(k, 1) = cputime();
    [egA egb] = gauss(pA, b);
    x(:, 1) = substreg(egA, egb);
    c(k, 1) = cputime() - c(k, 1);
    tm(k, 1) = etime(clock(), t(k, :));

    printf("\t\t%f\t%f\n", tm(k, 1), c(k, 1))
end

printf("Tempo: %f, CPU: %f\n\n", mean(tm(:, 1)), mean(c(:, 1)))

printf("Eliminação de Gauss com Pivoteamento\n")
printf("Exec\t\tdt[s]\t\tcpu[s]\n")

for k = 1:5
    printf("%d", k)
    t(k, :) = clock();
    c(k, 2) = cputime();
    [gpA gpb] = gausspivo(pA, b);
    x(:, 2) = substreg(gpA, gpb);
    c(k, 2) = cputime() - c(k, 2);
    tm(k, 2) = etime(clock(), t(k, :));
    printf("\t\t%f\t%f\n", tm(k, 2), c(k, 2))
end

printf("Tempo: %f, CPU: %f\n\n", mean(tm(:, 2)), mean(c(:, 2)))

printf("Gauss-Jordan\n")
printf("Exec\t\tdt[s]\t\tcpu[s]\n")

for k = 1:5
    printf("%d", k)
    t(k, :) = clock();
    c(k, 3) = cputime();
    [gjA gjb] = gaussjordan(pA, b);
    x(:, 3) = substreg(gjA, gjb);
    c(k, 3) = cputime() - c(k, 3);
    tm(k, 3) = etime(clock(), t(k, :));
    printf("\t\t%f\t%f\n", tm(k, 3), c(k, 3))
end

printf("Tempo: %f, CPU: %f\n\n", mean(tm(:, 3)), mean(c(:, 3)))


