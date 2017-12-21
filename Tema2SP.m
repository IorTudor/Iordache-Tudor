>> %Numar de ordine: 10

%Semnal triunghiular

%Perioada P = 40 s

%Durata semnalelor D = 10

%Numar de coeficienti = 50



P = 40; 

D = 10; 

N = 50;

w0 = 2*pi/P; 

t_tr = 0:0.01:D; %esantionarea semnalului original

x_tr = sawtooth((pi/12)*t_tr,0.5)/2+0.5; %semnalul triunghiular original

t = 0:0.01:P; %esantionarea semnalului modificat

x = zeros(1,length(t)); %initializare a semnalului modificat cu valori nule

x(t<=D) = x_tr; %modificam valorile nule cu valori din semnalul original

                

figure(1);

plot(t,x),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)'); %afisare x(t)

hold on;





for k = -N:N 

    x_t = x_tr; 
    x_t = x_t .* exp(-1i*k*w0*t_tr); 
    X(k+N+1) = 0; %initializare cu valoare nula

    for i = 1:length(t_tr)-1

        X(k+N+1) = X(k+N+1) + (t_tr(i+1)-t_tr(i)) * (x_t(i)+x_t(i+1))/2; %reconstructia folosind coeficientii

    end

end



for i = 1:length(t) 

    x_finit(i) = 0; 

    for k=-N:N

        x_finit(i) = x_finit(i) + (1/P) * X(k+51) * exp(1i*k*w0*t(i));  %reconstructia folosind coeficientii

    end

end

plot(t,x_finit,'--'); %afisare reconstructie semnal folosind cei N coeficienti



figure(2);

w=-50*w0:w0:50*w0; 
stem(w/(2*pi),abs(X)),title('Spectrul lui x(t)'); %afisarea spectrului



%Conform teoriei, orice semnal periodic poate fi aproximat printr-o suma de sinusuri si 
%cosinusuri, fiecare avand coeficienti specifici (coeficienti ce reprezinta spectrul).
%Semnalul reconstruit foloseste un numar de 50 de termeni si se apropie de forma 
%semnalului original cu o marja de eroare ce poate fi micsorata prin marirea
%numarului de coeficienti ai SF.
