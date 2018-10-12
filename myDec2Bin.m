function ans = myDec2Bin(num)

length = ceil(log2(num));

digits = blanks(length);

diff = 1;
i = 1;

while  diff ~= 0
        diff = num - 2^(length-i);
        if diff > 0 
            digits(i) = '1';
            num = diff;
        elseif diff < 0
            digits(i) = '0';
        end
        i = i + 1;
end

ans = digits;