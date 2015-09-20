
a=(39+54./60+26./3600)./180.*pi;

c=-11.03./180*pi;
D=zeros(51,3);
l=0;
L=[];
for b = -pi./4 : pi./7200 :pi./4;
A=[0,1,0;cos(a)*cos(b),cos(a)*sin(b),sin(a);tan(c),0,-1];
B=[3*cos(a)*sin(b);0;3*cos(a)*cos(b)*tan(c)-3*sin(a)];
C=(A^(-1)*B);
l=sqrt(C(1)^2+C(2)^2+C(3)^2);
L=[L,l];
end
n=length(L);
plot(1:n,L)










%s=solve('Y1=3*cos(a)*sin(b)','cos(a)*cos(b)*X1+*cos(a)*sin(b)*Y1+sin(a)*Z1=0','tan(c)*X1-Z1=3*cos(a)*cos(b)*tan(c)-3*sin(a)=0','X1,Y1,Z1')
%result(s.X1,s.Y1,s.Z1)
