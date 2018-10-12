function out = Newton(f,df,x0)

x = x0;

for i = 1:10
    x = x - df(x)\f(x);
end

out = x;

return