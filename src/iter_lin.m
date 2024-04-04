function zero = iter_lin(func, initial_guess, tolerance, max_iterations)
    % func: The function for which we want to find a zero.
    % initial_guess: The initial guess for the zero.
    % tolerance: The desired tolerance for the zero.
    % max_iterations: The maximum number of iterations allowed.

    % Initialize variables
    x = initial_guess;
    iteration = 0;

    % Iterate until convergence or maximum iterations reached
    while iteration < max_iterations
        % Calculate the next iteration using the fixed-point iteration formula
        x_next = func(x);

        % Check for convergence based on tolerance
        if abs(x_next - x) < tolerance
            zero = x_next; % Found a zero within tolerance
            return;
        end

        % Update the current guess for the zero
        x = x_next;

        % Increment the iteration counter
        iteration = iteration + 1;
    end

    % If we reach this point, the method did not converge within max_iterations
    error('Method did not converge within the maximum number of iterations');
end
