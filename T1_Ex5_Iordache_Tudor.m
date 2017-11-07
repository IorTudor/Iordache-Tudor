function[]=T1_Ex5_Iordache_Tudor(x,nr)

A=1.5;
T=4;
figure(nr)

%se inmulteste functia in modul cu amplitudinea iar argumentul sinusului se imparte la
%perioada semnalului neredresat pentru a obtine graficul dorit (redresare)
s=A*abs(sin(2*pi*x*1/T));
plot(x, s, '-r.' ),title('Semnal sinusoidal redresat dubla alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end