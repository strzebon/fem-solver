function [res] = L(i, n)
    h = 3/n;

    if x_(i,n) <= 1 || x_(i-1,n) >= 2
        s1 = 0;
    else
        f = @(x) (x - x_(i-1,n)) / h;
        a = max(x_(i-1,n), 1);
        b = min(x_(i,n), 2);
        s1 = definiteIntegral(f, a, b);
    end

    if x_(i+1,n) <= 1 || x_(i,n) >= 2
        s2 = 0;
    else
        f = @(x) (x_(i+1,n) - x) / h;
        a = max(x_(i,n), 1);
        b = min(x_(i+1,n), 2);
        s2 = definiteIntegral(f, a, b);
    end

    f = @(x) 1/h;
    a = x_(i-1,n);
    b = x_(i,n);
    s3 = definiteIntegral(f, a, b);

    f = @(x) -1/h;
    a = x_(i,n);
    b = x_(i+1,n);
    s4 = definiteIntegral(f, a, b);

    G = 6.674 * 10^(-11);
    res = 4*pi*G*(s1 + s2) - 1/3*(s3 + s4);
end