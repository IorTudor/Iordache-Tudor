function[]=T1_Ex1_Iordache_Tudor(x,nr)
% setam factorul de umplere
fu = 1/4;

%semnalul dreptunghiular se reprezinta ca square
%se inmulteste cu (1-fu) si se scade cu n deoarece nivelurile
%sunt:a+b = 0.5 (nivelul max) si a-b = -1 (nivelul min)
s=(1-fu)*square(x*2*pi, fu*100) - fu;
figure(nr)
plot(x,s,'-r.'),title('Semnal dreptunghiular periodic'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end