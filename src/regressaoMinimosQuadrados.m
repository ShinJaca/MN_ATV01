% a+bx

function [a, b, r2] = regressaoMinimosQuadrados(x, y)

    if ((length(x) - length(y)) ~= 0)
        error("Matrizes de tamanhos diferentes!");
    end

    n = length(x);
    soma_x = sum(x);
    soma_y = sum(y);
    soma_xy = sum(x .* y);
    soma_x2 = sum(x.^2);

    b = (n * soma_xy - (soma_x * soma_y)) / (n * soma_x2 - (soma_x)^2);
    a = (soma_y - b * soma_x) / n;

    avg_y = soma_y / n
    st = sum((y - avg_y).^2)
    sr = sum((y - a - b .* x).^2)

    sy = sqrt(st / (n - 1))
    syx = sqrt(sr / (n - 2))

    r2 = (st -sr) / st;
end
