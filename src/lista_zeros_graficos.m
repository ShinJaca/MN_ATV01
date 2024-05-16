% Q1

f = @(x) 8500 - (35e3 .* x .* (1 + x).^7) ./ (((1 + x).^7) - 1)
X = linspace(.01, .3);
hf = figure();
plot(X, f(X));
grid on
xlabel("x", "fontsize", 15, "fontweight", "bold")
ylabel("f(x)", "fontsize", 15, "fontweight", "bold")
title("Questão 1 - Função no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q1_plot.png", "-dpng", "-S500,500");

% Q2

f = @(t) (320e3 ./ (1 + (32e3 .* e.^(-.09 .* t)))) - (96e3 .* e.^(-.05 .* t)) - 132e3
X = linspace(100, 120);
hf = figure();
plot(X, f(X));
grid on
xlabel("t", "fontsize", 15, "fontweight", "bold")
ylabel("f(t)", "fontsize", 15, "fontweight", "bold")
title("Questão 2 - Função no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q2_plot.png", "-dpng", "-S500,500");

% Q3

f = @(x) (3.576515 .* x) ./ ((x.^2 + .7225).^(3/2)) - 1.25
g = @(x) .3495 .* (x.^2 + .7225).^(3/2)
X = linspace(0, 1);
hf = figure();
plot(X, f(X), ";f(x);", X, g(X), ";g(x);");
grid on
xlabel("x", "fontsize", 15, "fontweight", "bold")
ylabel("f(x),g(x)", "fontsize", 15, "fontweight", "bold")
title("Questão 3 - Funções no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q3_plot.png", "-dpng", "-S500,500");

% Q4

f = @(h) -h.^3 +3 .* h.^2 - 16/5;
df = @(h) -3 .* h.^2 + 6 .* h;
X = linspace(1, 2);
hf = figure();
plot(X, f(X), ";f(x);", X, df(X), ";df(x);");
grid on
xlabel("x", "fontsize", 15, "fontweight", "bold")
ylabel("f(x),df(x)", "fontsize", 15, "fontweight", "bold")
title("Questão 4 - Funções no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q4_plot.png", "-dpng", "-S500,500");

% Q5

f = @(t) 1800 .* log(160e3 ./ (160e3 - 2600 .* t)) - 9.81 .* t - 750
g = @(t) (1800 .* log(160e3 ./ (160e3 - (2600 .* t))) - 750) / 9.81
X = linspace(10, 30);
hf = figure();
plot(X, f(X), ";f(t);", X, g(X), ";g(t);");
grid on
xlabel("x", "fontsize", 15, "fontweight", "bold")
ylabel("f(t),g(t)", "fontsize", 15, "fontweight", "bold")
title("Questão 5 - Funções no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q5_plot.png", "-dpng", "-S500,500");

% Q6

f = @(y) 1 - (400 ./ (9.81 .* (3 .* y + (y.^2) ./ 2).^3)) .* (3 + y)
X = linspace(1, 2);
hf = figure();
plot(X, f(X));
grid on
xlabel("y", "fontsize", 15, "fontweight", "bold")
ylabel("f(y)", "fontsize", 15, "fontweight", "bold")
title("Questão 6 - Função no intervalo", "fontsize", 15, "fontweight", "bold");
print(hf, "q6_plot.png", "-dpng", "-S500,500");
