function [c s]=detrot(k,l,x)
    ro=sqrt(x(k)^2+x(l)^2);
    c=x(k)/ro;
    s=(-1)*x(l)/ro;
end
