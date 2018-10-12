function integral = trapIntegral(f,N,a,b)

dx = (b - a)/N;

integral = f(a) + f(b);

for i = 1:N-1
    integral = integral + 2*f(a + i*dx);
end

integral = 0.5*dx*integral;

end
