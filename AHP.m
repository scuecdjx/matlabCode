A = [1,7/5,5/9,5/3;
    3/5,1,1/3,5/7;
    9/5,3,1,9/5;
    3/5,7/5,5/9,1]
[x, y] = eig(A);
eigenvalue = diag(y);
lamda = eigenvalue(1)
y_lamda = x(:, 1)
W = y_lamda/sum(y_lamda)