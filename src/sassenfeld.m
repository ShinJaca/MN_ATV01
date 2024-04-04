function sassenfeld(A, show)

    [nl, nc] = size(A);

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
    if (show)
        beta
    end
    if max(beta) >= 1
        printf("O sistema não converge\n");
        return;
    end
    printf("O sistema converge\n");
    

end
