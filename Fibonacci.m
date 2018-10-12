function out = Fibonacci(n)

    f = ones(n,1);
    
    for i = 3:n
        f(i) = f(i - 1) + f(i - 2);
    end
    
out = f(n);
return  