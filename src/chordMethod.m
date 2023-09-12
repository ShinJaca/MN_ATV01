function [root, iterations] = chordMethod(f, x0, x1, tol, maxIter)
    % Inputs:
    %   - f: The function whose zero is to be found.
    %   - x0: Initial guess 1 for the root.
    %   - x1: Initial guess 2 for the root.
    %   - tol: Tolerance (stopping criterion).
    %   - maxIter: Maximum number of iterations.
    % Outputs:
    %   - root: Approximation of the root.
    %   - iterations: Number of iterations performed.

    iterations = 0;

    while abs(f(x1)) > tol && iterations < maxIter
        x2 = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
        x0 = x1;
        x1 = x2;
        iterations = iterations + 1;
    end

    root = x1;
end
