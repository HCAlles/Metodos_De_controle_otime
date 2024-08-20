nit = 1207
suma = 0;
for i =1:nit-1
    a = (u(i+1)-u(i))^2;
    suma = suma + a;
end
rmsu = sqrt(suma/nit)
%teste rmse
sumb = 0;
for i =1:nit-1
    b = (e(i))^2;
    sumb = sumb + b;
end
rmse = sqrt(sumb/nit)