1
x = 0.5
h = 10;

f = @(x) -.1 * x^4 - .15 * x^3 - .5 * x^2 - .25 * x + 1.2;

df = @(x) -.4 * x^3 - .45 * x^2 - x - .25;
cdf = df(x)


adf = @(xi, xo, h) (f(xi) - f(xo)) / (2 * h);

for k = 1:11

    h = h / 10;
    mh(1, k) = h;
    xi = x + h;
    xo = x - h;
    mr(1, k) = adf(xi, xo, h);
    merr(1, k) = abs(cdf - mr(1, k));
    printf("% .10f\t% .10f\n", h, mr(1, k));
end

loglog(mh, merr);