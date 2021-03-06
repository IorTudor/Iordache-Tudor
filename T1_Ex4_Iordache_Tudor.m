function[]=T1_Ex4_Iordache_Tudor(x,nr)

A=0.8;
T=3;
figure(nr)

%se inmulteste functia cu amplitudinea iar argumentul sinusului se imparte la
%perioada semnalului neredresat pentru a obtine graficul dorit
s=A*sin(2*pi*x*1/T);

%Monoredresare (toate elementele mai mici decat 0 sunt transformate in 0)
s(s<0) = 0;

plot(x, s, '-r.'),title('Semnal sinusoidal redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end