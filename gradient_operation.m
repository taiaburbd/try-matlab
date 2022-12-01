%gradient operation on a scalar 
clear all
close all

syms x y z i j k real
V = (x^2*y+x*y^2+x*z^2)
display(V)
A= [diff(V,x) diff(V,y) diff(V,z)];

grad1=i*A(1)+j*A(2)+k*A(3)

display(grad1)

disp('The gradient at a point P(1,-1,2) is: ')

disp(subs(grad1,{x,y,z},{1,-1,2}));