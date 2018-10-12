function C = CosSeries(n)

format long 

% n = degree of polynomial approximation of cos

C = zeros(n+1,1);
C(1) = 1;

    for i = 1:n
        if rem(i,2) == 0
            C(i+1) = 1/factorial(2*(i - 1) + 1);
        else
            C(i+1) = 0;
        end
    end
    
return

   
        