function [res] = definiteIntegral(f, a, b)
    x1 = 1/sqrt(3);
    x2 = -1/sqrt(3);
    res = (b-a)/2 * (f((b-a)/2 * x1 + (a+b)/2) + f((b-a)/2 * x2 + (a+b)/2));
end