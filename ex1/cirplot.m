function cir = cirplot(xa,ya,xb,yb)
clf;
dx=xb-xa;
dy=yb-ya;
x=xa;
y=ya;
if(dx>dy)
steps=dx;
else
steps=dy;
endif
xinc=dx/steps;
yinc=dy/steps;
plot(x,y);
hold on;
for i=0:(steps-1),
x=x+xinc;
y=y+yinc;
z=linspace(xa,x,500);
z2=linspace(ya,y,500);
plot(z,z2,'r');
hold on;
end;