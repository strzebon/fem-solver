prompt = "Podaj n:";
n = input(prompt);
h = 3/n;
matrixB = zeros(n-1, n-1);
matrixL = zeros(n-1, 1);

for i = 1:n-1
    for j = 1:n-1
        matrixB(j,i) = B(i,j,n);
    end
end

for i = 1:n-1
    matrixL(i) = L(i,n);
end

matrixW = linsolve(matrixB, matrixL);
% disp(matrixB);
% disp(matrixL);
% disp(matrixW);
step = 0.01;
k = 3/step + 1;
X = 0:step:3;
Y = zeros(k);
for i = 1:k
    Y(i) = phi(matrixW, n, X(i));
end
plot(X,Y);

