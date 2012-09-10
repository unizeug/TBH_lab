
% % Slurp in all lines.
% f = fopen('../Messwerte/dunkel_sperrsättigungsstrom.txt');
% c = textscan(f,'%s','Delimiter','\n');
% lines = c{1};
% fclose(f);
% 
% % Remove headers.
% lines(1:6) = [];
% 
% % convert Strings to numbers
% b = str2num(char(lines));
% 
% % replace 0 (in electric current values [A]) with the smallest possible
% % value
% b(b(:,2) == 0,2) = realmin;

[A1.U,A1.I] = readBLA('../Messwerte/Wafer120502_z1s6_Biggi_UI_Kennlinie_neu_gut.txt');
[A2.U,A2.I] = readBLA('../Messwerte/Wafer120502_z6s6_Biggi_UI_Kennlinie_neu_gut.txt');
[A3.U,A3.I] = readBLA('../Messwerte/Wafer120502_z12s6_Biggi_UI_Kennlinie_neu_gut.txt');
[A4.U,A4.I] = readBLA('../Messwerte/Wafer120502_z1s6_Biggi_UI_Kennlinie.txt');
[A5.U,A5.I] = readBLA('../Messwerte/Wafer120502_z5s6_Biggi_UI_Kennlinie.txt');
[A6.U,A6.I] = readBLA('../Messwerte/Wafer120502_z12s6_Biggi_UI_Kennlinie_neu_gut.txt');
[A7.U,A7.I] = readBLA('../Messwerte/Wafer120502_z6s6_UI_Kennlinie_Finger_groß_unten_dunkel_neu_gut.txt');


[A4.U,A4.I] = readBLA('../Messwerte/Wafer120502_z6s6_GK02_UI_-1_Kennlinie_neu_gut.txt');
[A8.U,A8.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');



A = A1;

I = A.I;
U = A.U;
I = abs(I);
figure(601);
    clf(601)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();
    
    
A = A2;

I = A.I;
U = A.U;
I = abs(I);
figure(602);
    clf(602)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();
    
    
A = A3;

I = A.I;
U = A.U;
I = abs(I);
figure(603);
    clf(603)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();
    
    

    
A = A4;

I = A.I;
U = A.U;
I = abs(I);
figure(604);
    clf(604)
        semilogy(U,abs(I-I(U == min(abs(U)))),'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
%     ylim([1E-11 1])
    grid();
    
    
A = A5;

I = A.I;
U = A.U;
I = abs(I);
figure(605);
    clf(605)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();


A = A6;

I = A.I;
U = A.U;
I = abs(I);
figure(606);
    clf(606)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();
    
    
A = A7;

I = A.I;
U = A.U;
I = abs(I);
figure(607);
    clf(607)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
    ylim([1E-11 1])
    grid();


A = A8;

I = A.I;
U = A.U;
% I = abs(I);
figure(608);
    clf(608)
        plot(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('I [A]')
    xlabel('U [V]')
%     ylim([1E-11 1])
    grid();
    
    
    