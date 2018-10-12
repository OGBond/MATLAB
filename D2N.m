function result = D2N(N)

    h = 2/N;
    Ones = ones(N,N);

    D2 = diag(diag(Ones,-1),-1) - 2*diag(diag(Ones,0),0) + diag(diag(Ones,1),1);
    D2(1,N) = 1;
    D2(N,1) = 1;
    D2 = D2/h^2;
    result = D2;
return