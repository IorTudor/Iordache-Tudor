function[]=T1_Ex2_Iordache_Tudor(x,nr)

width = 0.5;
%sawtooth(t,width) genereaza un semnal triunghiular unde width determina
%unde se afla maximul; in acest caz width este 0.5 pentru a avea un semnal
%simetric; de asemenea inmultesc cu (1+width) si scad cu width pentru a
%acomoda nivelurile de maxim si minim din cerinta (a+b = 1 si a-b = -2)

%se inmulteste t cu 1/6 pentru a "lati" semnalul astfel incat panta sa devina +1
%V/s
s=(1+width)*sawtooth(x*2*1/6*pi, width) - width;
figure(nr)
plot(x,s,'-r.'),title('Semnal triunghiular'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end