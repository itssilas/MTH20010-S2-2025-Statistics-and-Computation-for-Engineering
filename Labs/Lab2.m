% Obtain the eigenvectors of the matrix A
A = [1 2 3 ; 4 5 6 ; 7 8 9]
[V, D] = eig(A);

% Display the eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(diag(V));
disp('Eigenvectors:');
disp(D);

% Check that if v1, v2, v3 is an eigenvector of A, then v_1^2 + v_2^2 +
s=0;
for i=1:3
    s=s+V(i,1).^2;
end;
s

% Determine the angle between the eignvectors of A
alpha = acos(V(:,1)'*V(:,3))
