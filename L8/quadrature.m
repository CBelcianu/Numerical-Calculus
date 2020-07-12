function quadrature
clf;hold on;grid on;set(gca,'FontSize',15);

a=0;
b=8;
n=6;
aa=0;
bb=8;

f=@(x) sin(2*x)+sin(x)+2;

x=linspace(a,b,1000);

plot(x,f(x),'b','LineWidth',8);ylim([0,4]);

fill([x b a],[f(x) 0 0],'b','FaceAlpha',0.25);

h=(b-a)/n;

b=a+h;

for k=1:n

	plot([a b],[f(a) f(b)],'r','LineWidth',8);
	fill([a b b a],[f([a b]) 0 0],'r','FaceAlpha',0.25);

	nodes=[a (a+b)/2 b];

	x=linspace(a,b,1000);

	L2=LagrangeBary(nodes,f(nodes),x);

	plot(x,L2,'g','LineWidth',8);

	fill([x b a],[L2 0 0],'g','FaceAlpha',0.25);
	
	a=b;
	b=a+h;

end
text(0,-0.3,['quad(f)=',num2str(quad(f,aa,bb), '%.5f') ';'...
	'quad(f)=',num2str(reptrap(f,aa,bb,n), '%.5f') ';'...
	'quad(f)=',num2str(repsim(f,aa,bb,n), '%.5f') ';'
],'FontSize',20);
end