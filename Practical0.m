% Question 1 - a vector containing the current date

TodaysDate = num2str(date);     % Converts today's date into a string
                                % in 'DD-MMM-YYYY' format

% Function which returns a string of numbers from '01' to '12' based on 
% the month
                                
function N = month(date):         


date_temp = num2str(date);
month_temp = date_temp(4:6);

    if date_temp(4:6) == 'Jan'
        return '01';
    elseif date_temp(4:6) == 'Feb'
        return '02';
    elseif date_temp(4:6) == 'Mar'
        return '03';
    elseif date_temp(4:6) == 'Apr'
        return '04';
    elseif date_temp(4:6) == 'May'
        return '05';
    elseif date_temp(4:6) == 'Jun'
        return '06';
    elseif month_temp(4:6) == 'Jul'
        return '07';
    elseif date_temp(4:6) == 'Aug'
        return '08';
    elseif date_temp(4:6) == 'Sep'
        return '09';
    elseif date_temp(4:6) == 'Oct'
        return '10';
    elseif date_temp(4:6) == 'Nov'
        return '11';
    elseif date_temp(4:6) == 'Dec'
        return '12';
    end
end 

CurrentDay = TodaysDate(1:2);           % Returns day as 2-digit string
CurrentMonth = month(TodaysDate);       % Returns month as 2-digit string
CurrentYear = TodaysDate(10:11);        % Returns final 2 digits of year

VectorToday = [CurrentDay, CurrentMonth, CurrentYear]

% Question 2 - Computing statistics from a vector

IntegersFrom1to100 = 1:100;

MinInteger = min(IntegersFrom1to100);
MaxInteger = max(IntegersFrom1to100);
AverageInteger = mean(IntegersFrom1to100);
SDOfIntegers = sqrt(var(IntegersFrom1to100));

% Question 3 - Prime numbers less than 1000

PrimeNumbers = primes(1000);
NumberOfPrimes = len(PrimeNumbers);
SumOfPrimes = sum(PrimeNumbers);
MeanOfPrimes = mean(PrimeNumbers);

% Question 4 - Average of the above prime numbers with some entries removed

NewPrimeNumbers = PrimeNumbers;
NewPrimeNumbers(10) = 10*PrimeNumbers(10);
NewPrimeNumbers = NewPrimeNumbers([1:19,31:end]);

NewMean = mean(NewPrimeNumbers);

% Question 5 - Computing the 2-norm of a matrix

ThreeMatrix = zeros(3);

for i = 1:3
    for j = 1:3
        ThreeMatrix(i,j) = j + 3*(i - 1);
    end
end

FrobeniusNorm = Norm(ThreeMatrix,2);

% Question 6 - 2-norm of a 100-by-100 matrix

ThousandMatrix = zeros(100);

for i = 1:100
    for j = 1:100
        ThousandMatrix(i,j) = j + 100*(i - 1);
    end
end

FrobeniusNorm = Norm(ThousandMatrix,2);

% Question 7 - Sum of prime factors of a large number

SumOfPrimeFactors = sum(factor(123456789));

% Question 8 - Entry of a solution to a matrix equation

A = ThreeMatrix;

x = [1;2;3]\(A + eye(3));
x(2);

% Question 9 - Entry of a solution to a matrix equation

B = A;
B(1,:) = flip((A(1,:)));

x = [1; 2; 3]\(B + eye(3));
x(2)

% Question 10 - 1000 equispaced points between 0 and 10 in a vector

step = (10 - 0)/1000;
Mesh = 0:step:10

% Question 11 - Random letters in a vector

% Question 12

x = 0:0.01:10;
S1 = sin(x);
S2 = sin(x.^2);
S3 = S1 + S2;

plot(x,S1,'-.r')
hold on
plot(x,S2,'--b')
plot(x,S3,':g')
legend('$\sin x$','$\sin x^2$','$\sin x + \sin x^2$','Interpreter','latex')
hold off

% Question 13

x = 0:0.01:5;
y = exp(-x.^2);
semilogx(x,y)

% Question 14

Matrix = rand(10,10);
[EigVals,EigVecs] = eig(Matrix);
EigVals = diag(EigVals);
subplot(1,3,1)
hold on
plot(real(EigVals),imag(EigVals),'x')
xlabel('$\mathrm{Re} \lambda_i$','Interpreter','latex')
ylabel('$\mathrm{Im} \lambda_i$','Interpreter','latex')

subplot(1,3,2)
i = 1:10;
plot(i,real(EigVecs))

xlabel('$i$','Interpreter','latex')
ylabel('$\mathrm{Re} (\mathbf{v}_i$)','Interpreter','latex')
xlim([1,10])

subplot(1,3,3)
for i = 1:10
    plot(i,imag(EigVals(i)),'o')
end
xlabel('$i$','Interpreter','latex')
ylabel('$\mathrm{Im} (\mathbf{v}_i$)','Interpreter','latex')
xlim([1,10])

hold off