function [res] = B(i, j, n)
    if abs(i-j) > 1
        res = 0;
        return;
    end

    h = 3/n;

    if i==j
        f = @(x) 1/h^2;
        a = x_(i-1,n);
        b = x_(i+1,n);
    else
        f = @(x) -1/h^2;
        a = x_(min(i,j),n);
        b = x_(max(i,j),n);
    end

    res = definiteIntegral(f, a, b);
end