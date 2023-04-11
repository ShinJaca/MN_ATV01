function [x, iter] = jacobigpt(A, b, x0, tol, maxiter)
% JACOBI Solve a linear system Ax = b using Jacobi's method.
%   [x, iter] = jacobi(A, b, x0, tol, maxiter) uses Jacobi's method to solve
%   the linear system Ax = b, starting from the initial guess x0, and
%   iterating until the solution converges to a tolerance of tol or a maximum
%   number of iterations maxiter is reached. Returns the solution vector x
%   and the number of iterations iter required to converge.

n = length(b); % dimension of the system
x = x0; % initial guess
iter = 0; % iteration counter
while iter < maxiter
    xnew = zeros(n, 1); % initialize new solution vector
    for i = 1:n % loop over rows
        xnew(i) = (b(i) - A(i,:) * x + A(i,i) * x(i)) / A(i,i); % Jacobi update
    end
    if norm(xnew - x) < tol % check for convergence
        break;
    end
    x = xnew; % update solution
    iter = iter + 1; % increment iteration counter
end

if iter == maxiter
    warning('Jacobi method did not converge');
end

end
