// Gram Schmidt Orthogonalization


// input a
disp('Enter the vector a');
a11=input("Enter a11: ");
a21=input("Enter a21: ");
a31=input("Enter a31: ");

// input b
disp('Enter the vector b');
b11=input("Enter b11: ");
b21=input("Enter b21: ");
b31=input("Enter b31: ");

// input c
disp('Enter the vector c');
c11=input("Enter c11: ");
c21=input("Enter c21: ");
c31=input("Enter c31: ");

A=[a11,b11,c11;a21,b21,c21;a31,b31,c31];
//vectors as independent columns of A
disp(A,'A=');
[m,n]=size(A);
for k=1:n
    V(:,k) = A(:,k);
    for j=1:k-1
        R(j,k)=V(:,j)'*A(:,k);   // Finding q(transpose)* a
        V(:,k)=V(:,k)-R(j,k)*V(:,j);	// finding q2
    end
    R(k,k)=norm(V(:,k));	// normalising the three orthogonal vectors
    V(:,k)=V(:,k)/R(k,k);
end
disp('q1, q2, q3 are :');
disp(V,'Q=');
