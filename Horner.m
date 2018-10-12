function ans = Horner(A,x_0)
    
% Uses Horner's scheme to compute the value of a polynomial with
% coefficients A = [a_0,a_1,...,a_n] (in increasing powers of x) at x = x_0

n = length(A)-1; % degree of the polynomial with the coefficients in coeff
a = A;           % vector of coefficients
b = a;           % storage space for coefficients b_0

b(n+1) = a(n+1); % setting b_n = a_n

for i = n:-1:1
    b(i) = a(i) + b(i+1)*x_0;
end
    
ans = b(1);

return