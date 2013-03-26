function [A G]=rotmat(k,l,A)
    [m n] = size(A);
    G = eye(m);
    [c s] = detrot(k,l,A(:,k));
    G(k,k) = G(l,l) = c;
    G(k,l) = -s;
    G(l,k) = s;
    A=G*A;
end
