function sol = FDDirichlet(f,N,a,b,A,B)

    % This solves the differential equation u''(x) = f(x) subject to
    % boundary conditions u(a) = A, u(b) = B

    F = zeros(N,1);   % storage space for values of f(x)
    h = (b - a)/N;      % setting step size of x
    
    for i = 1:N
        F(i) = f(a + i*h);
    end
    
    FirstRow = [-2, 1, zeros(1, N-3), 1];
    FirstRow = sparse(FirstRow);
    D2 = toeplitz(FirstRow);
    D2 = D2/h^2;
    
    