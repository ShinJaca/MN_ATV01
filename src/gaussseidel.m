function [x, k, Erx] = gaussseidel(A, b, tol, N, x0)

    [nl, nc] = size(A);
    x = xo = x0;
    Erx = inf(nl, 1);
    k = 1;

    % sassenfeld
    beta = zeros(nl, 1);

    for i = 1:nl

        for j = 1:i - 1
            beta(i) += abs(A(i, j)) * beta(j);
        end

        for j = i + 1:nl
            beta(i) += abs(A(i, j));
        end

        beta(i) /= abs(A(i, i));

    end

    if max(beta) >= 1
        printf("O sistema não converge\n");
        return;
    end

    % Gauss-Seidel

    for i = 1:nl

        for j = 1:nl

            if i == j
                C(i, j) = 0;
                d(i, 1) = b(i, 1) / A(i, i);
            else
                C(i, j) = -A(i, j) / A(i, i);
            end

        end

    end

    for k = 1:N

        % for i = 1:nl
        %     r = 0;

        %     for j = 1:nl

        %         if j != i
        %             r += A(i, j) * x(j, 1);
        %         end

        %     end

        %     x(i, 1) = (b(i, 1) - r) / A(i, i);
        %     xo = x;

        % end

        for i = 1:nl

            for j = 1:i - 1
                x(i) += C(i, j) * x(j);
            end

            for j = i + 1:nl
                x(i) += C(i, j) + xo(j) + d(j);
            end

        end

        xo = x;

        for i = 1:nl
            Erx(i) = abs((x(i) - xo(i)) / x(i));
        end

        if max(Erx) < tol
            return;
        end

    end

end
