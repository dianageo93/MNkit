function [R Q]=QRgivens(A)
    [m n]=size(A);
    Q=eye(m);
    for i=1:n
        for j=i+1:m
            [A G]=rotmat(i,j,A);
            Q=G*Q;
        end
    end
    Q=Q';
    R=A;
    R(abs(R) < 10^(-10)) = 0;
end
