1;
printf("Questão 1\n");
f = @(x) 8500 - (35e3 .* x .* (1 + x).^7) ./ (((1 + x).^7) - 1)

printf("Método da Bissecção\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", .01, .3, 5e-6);
bissec(f, .01, .3, 5e-6, 20);

printf("\nMétodo da Secante\n");
printf("x0: %.3f\tx1: %.3f\terr: %.6f\n", .01, .3, 5e-6);
secante(f, .01, .3, 5e-6, 30);

printf("\n--------------------------------------\n\n");

printf("Questão 2\n");
f = @(t) (320e3 ./ (1 + (32e3 .* e.^(-.09 .* t)))) - (96e3 .* e.^(-.05 .* t)) - 132e3

printf("Método da Falsa Posição\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 100, 120, 1e-6);
falsapos(f, 100, 120, 1e-6, 30);

printf("\nMétodo da Secante\n");
printf("x0: %.3f\tx1: %.3f\terr: %.6f\n", 100, 120, 1e-6);
secante(f, 100, 120, 1e-6, 30);

printf("\n--------------------------------------\n\n");

printf("Questão 3\n");
f = @(x) (3.576515 .* x) ./ ((x.^2 + .7225).^(3/2)) - 1.25
printf("Método da Bissecção\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 0, 1, 1e-6);
bissec(f, 0, 1, 1e-6, 30);

printf("\nMétodo da Iteração Linear\n");
g = @(x) .3495 .* (x.^2 + .7225).^(3/2)
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 0, 1, 1e-6);
iterlin(f, g, 0, 1e-6, 30);

printf("\n--------------------------------------\n\n");

printf("Questão 4\n");
f = @(h) -h.^3 +3 .* h.^2 - 16/5

printf("Método da Falsa Posição\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 1, 2, 1e-6);
falsapos(f, 1, 2, 1e-6, 30);

printf("\nMétodo de Newton-Raphson\n");
df = @(h) -3 .* h.^2 + 6 .* h
printf("x0: %.3f\tx1: %.3f\terr: %.6f\n", 1, 2, 1e-6);
newtonraph(f, df, 1, 1e-6, 30);

printf("\n--------------------------------------\n\n");

printf("Questão 5\n");
f = @(t) 1800 .* log(160e3 ./ (160e3 - 2600 .* t)) - 9.81 .* t - 750
printf("Método da Bissecção\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 10, 30, 1e-3);
bissec(f, 10, 30, 1e-3, 30);

printf("\nMétodo da Iteração Linear\n");
g = @(t) (-1800 .* log(160e3 ./ (160e3 - 2600 .* t)) + 750) ./ 9.81
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 0, 1, 1e-6);
iterlin(f, g, 10, 1e-3, 30);

printf("\n--------------------------------------\n\n");

printf("Questão 6\n");
f = @(y) 1 - (400 ./ (9.81 .* (3 .* y + (y.^2) ./ 2).^3)) .* (3 + y)

printf("Método da Falsa Posição\n");
printf("a: %.3f\tb: %.3f\terr: %.6f\n", 1, 2, 1e-2);
falsapos(f, 1, 2, 1e-2, 20);

printf("\nMétodo da Secante\n");
printf("x0: %.3f\tx1: %.3f\terr: %.6f\n", 1, 2, 1e-2);
secante(f, 1, 2, 1e-2, 20);

printf("\n--------------------------------------\n\n");
