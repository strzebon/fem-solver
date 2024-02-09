function [res] = phi(W, n, x)
    res = 5 - x/3;
    h = 3/n;

    if x < x_(1, n)
        res = res + W(1) * (x - x_(0, n)) / h;
        return
    end

    if x >= x_(n-1, n)
        res = res + W(n-1) * (x_(n, n) - x) / h;
        return
    end

    for i = 1:n-2
        if x < x_(i+1, n)
            res = res + W(i) * (x_(i+1, n) - x) / h + W(i+1) * (x - x_(i, n)) / h;
            return
        end
    end
end