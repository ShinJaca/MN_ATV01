function [x, k, Erx] = gaussseidel(A, b, tol, N, x0)

    [nl, nc] = size(A);
    x = xo = x0;
    Erx = inf(nl, 1);
    k = 1;

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
    C
    % sassenfeld
    be = zeros(nl, 1);

    for i = 1:nl

        for j = 1:i - 1
            be(i) += abs(C(i, j)) * be(j);
        end

        for j = i + 1:nl
            be(i) += abs(C(i, j));
        end

        % be(i) /= abs(C(i, i));

    end
    
    be

    if max(be) >= 1
        printf("O sistema não converge\n");
        return;
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

        % end

        for i = 1:nl
            r = 0;

            for j = 1:i - 1
                r += C(i, j) * x(j, 1);
            end

            for j = i + 1:nl
                r += C(i, j) * xo(j, 1);
            end

            x(i, 1) = r + d(i, 1);

        end

        for i = 1:nl
            Erx(i, 1) = abs((x(i, 1) - xo(i, 1)) / x(i, 1));
        end

        xo = x;

        % [C x]

        if max(Erx) < tol
            return;
        end

    end

end
