% Clear the workspace
clear

% Generate and display a row vector indx
indx = [1, 2, 3, 4, 5];
disp('indx:')
disp(indx)

% Generate and display a 5x5 matrix A of random numbers
A = rand(5);

% Ensure the matrix is invertible
while abs(det(A)) < 1e-6
    rng shuffle
    A = rand(5);
end

disp('Matrix A:')
disp(A)

% Calculate and display the determinant of A
detA = det(A);
disp('Determinant of A:')
disp(detA)

% Solve the system AX = indx' and display the solution vector X
X = A \ indx';
disp('Solution vector X:')
disp(X)

% Calculate eigenvalues and eigenvectors of A
[V, D] = eig(A);
eigenvalues = diag(D);

% Display the 5th eigenvalue and corresponding eigenvector
disp('5th eigenvalue of A:')
disp(eigenvalues(5))

disp('Corresponding eigenvector:')
disp(V(:,5))

% Calculate V⁻¹ * A * V
M = V^(-1)* A * V

% Compare element (1,1) of V⁻¹ * A * V with first eigenvalue of A
M(1,1) - D(1,1)

% Calculate sum of all elements of matrix M
sum(sum(M));

% Create column vector W whose elements are given by absolute values of the
% coordinates of v, where v is an eigenvector of A. We have 2 eigenvectors
w = abs(V(:,1));

% Create column vector Z whose elements are given by absolute values of the
% coordinates of v, where v is an eigenvector of A. We have 2 eigenvectors
z = abs(V(:,2));

% Plot in one figure vectors w and z against indx.
plot(indx, w, 'o-', indx, z, 's-')
xlabel('Index (i)', 'FontWeight', 'bold')
ylabel('|v_i|^2 (Eigenvector Component Magnitude)', 'FontWeight', 'bold')
title('Component Contributions of Eigenvectors 1 and 2', 'FontWeight', 'bold')
legend('1st Eigenvector', '2nd Eigenvector', 'Location', 'northeast') 
grid on

% Solve system of equations using rref
A = [1 2 -1 1 ; 2 3 2 3 ; 1 1 3 2];
rref(A)

%% Solution: c is free, a = 3 - 7c, b = 4c - 1