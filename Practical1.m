% Question 1 - refer to fin_diff.m

% Question 2 - contructing a 16-by-16 matrix using diagonals with 1s

Ones = ones(16,16);
h = 2/16; 

D2 = diag(diag(Ones,-1),-1) - 2*diag(diag(Ones,0),0) + diag(diag(Ones,1),1);

% diag(diag(Ones,n),n) is a 16-16 matrix with 1s on the nth diagonal.

D2(1,16) = 1;
D2(16,1) = 1;
D2 = D2/h^2;

% Question 3 - using toeplitz to reconstruct the matrix above

FirstRow = [-2, 1, zeros(1, 16-3), 1];
D2 = toeplitz(FirstRow);
D2 = D2/h^2;

% Question 4 - Modifying the code above to allow for an N-by-N matrix
% Adjusting Question 2

function result = D2N(N)

    h = 2/N;
    Ones = ones(N,N);

    D2 = diag(diag(Ones,-1),-1) - 2*diag(diag(Ones,0),0) + diag(diag(Ones,1),1);
    D2(1,N) = 1;
    D2(N,1) = 1;
    D2 = D2/h^2;
    result = D2;
return

for N = 4:7
    D2N(2^N)
return

% Question 5 - plotting a graph

x = -1:2/N:1-2/N;
f = sin(pi*x');
subplot(1,2,1)
plot(x,D2*f);

% Question 6 - What does the above graph show?

% The above matrix uses a central difference approximation to the second
% derivative. If we have a column vector y consisting of entries
% y(1), y(2), ... y(N-1), y(N) then left-multiplying this by D2 gives the
% ith row entry as (y(i-1) - 2y(i) + y(i+1))/h^2 for i = 2, ..., N-1. 
% For i = 1 the row entry would be (y(N) + y(2) - 2y(1))/h^2
% For i = N the row entry would be (y(1) + y(N-1) - 2y(N))/h^2.
% The fact that the first and last term of the matrix involve cycling over
% the columns indicates that there are periodic boundary conditions

hold on
subplot(1,2,2)
error = D2*f - -pi^2*sin(pi*x');
plot(error)
hold off

% Question 7 - Another function

N = 256;
x = -1:2/N:1-2/N;
f = exp(sin(pi*x'));
plot(x,f)
hold on

fpp = @(x) (pi^2*cos(pi*x) - pi^2*sin(pi*x)).*exp(sin(pi*x)); 
   
plot (x,fpp(x'),'r')
hold off

figure
plot(x,D2*f - fpp(x'),'g')