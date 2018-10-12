function root = Bisection(f,a,b,tol)

while b-a > tol
    c = mean([a,b]);
    if f(a)*f(c) < 0
        b = c;
    elseif f(b)*f(c) < 0
        a = c;
    end 
end
root = [a,b];


