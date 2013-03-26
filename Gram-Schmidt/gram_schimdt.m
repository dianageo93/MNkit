function [Q R]=gram_schimdt(A)
    [m n]=size(A);
    Q=R=zeros(m,m);
    for i=1:m
        R(i,i)=norm(A(:,i));
        Q(:,i)=A(:,i)/R(i,i);
        for j=i+1:n
            R(i,j)=Q(:,i)' * A(:,j);
            A(:,j)=A(:,j)-Q(:,i)*R(i,j);
        end
    end
end
