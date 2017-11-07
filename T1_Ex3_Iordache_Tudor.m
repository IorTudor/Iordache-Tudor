function[]=T1_Ex3_Iordache_Tudor(x,nr)

%se seteaza nivelurile din enunt unul cate unul
niv = [ -1 1 ];
%ultimul parametru al functiei loop este necesar pentru calcularea
%numarului figurii
T1_Ex3_Iordache_Tudor(x,nr,niv,1);

niv = [ -3 -1 1 3];
T1_Ex3_Iordache_Tudor(x,nr,niv,2);

niv = [ -5 -3 -1 1 3 5];
T1_Ex3bucla_Iordache_Tudor(x,nr,niv,3);

niv = [ -7 -5 -3 -1 1 3 5 7];
T1_Ex4bucla_Iordache_Tudor(x,nr,niv,4);

end