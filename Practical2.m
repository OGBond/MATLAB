% Practical 2

% Question 1 - Refer to D2N.m

% Question 2 - Refer to CosSeries.m

sum(CosSeries(15));

% Question 3 - Refer to Horner.m

Horner(CosSeries(15),0.5)

% Question 4 - Refer to Fibonacci.m

Fibonacci(17)

% Question 5 - Refer to Newton.m 

f = @(x) sin(x) + cos(x);
df = @(x) cos(x) - sin(x);

Newton(f,df,0)
Newton(f,df,6)

% Question 6 - Mirror primes

p = primes(100);
p = p(5:end);

mirror = 0;
mirror_primes = [];

for i = 1:length(p)
    num = num2str(p(i));     % converts entry of prime vector into a string
    mirror = flip(num);      % flips the string
    mirror = str2num(mirror); % converts to a number again
    if ismember(mirror,p) == 1
        mirror_primes = [mirror_primes, mirror];
        % adds prime number to storage space if its mirror is also prime
    end
end

% Question 7 - Sum of all multiples of 3 or 5 below 1000

total = 0;
for i = 1:999
    if rem(i,3) == 0 | rem(i,5) == 0
        total = total + i;
    end
end

% Question 8 - 

i = 10;



% Question 9 - refer to Bisection.m

% Question 10 - 

