# Ponto fixo
f = @(x) e.^-x - x;
df = @(x) -e.^-x -1;
x0=0;
e=1e-4;
xv=.36714329;

# Newton-Raphson
f = @(x) x.^10 - 1;
df = @(x) 10.*x.^9;
x0 = .5;
e = 1e-4;

# Secante
f = @(x) x - 2 .* sin(x) - 0.5;
x0 = 1.8;
x1 = 2;
e = 1e-4;