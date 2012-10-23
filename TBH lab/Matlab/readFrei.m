<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
% Change default axes fonts.
=======
2% Change default axes fonts.
>>>>>>> refs/heads/özgü
set(0,'DefaultAxesFontName', 'Times New Roman')
set(0,'DefaultAxesFontSize', 12)

% Change default text fonts.
set(0,'DefaultTextFontname', 'Times New Roman')
set(0,'DefaultTextFontSize', 10)

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
%[A6.U,A6.I] = readBLA('../Messwerte/');

[A6.U,A6.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');
[A7.U,A7.I] = readBLA('../Messwerte/Wafer120502_z6s6_UI_Kennlinie_Finger_groß_unten_dunkel_neu_gut.txt');
% 
% 
% [A4.U,A4.I] = readBLA('../Messwerte/Wafer120502_z6s6_GK02_UI_-1_Kennlinie_neu_gut.txt');
 [A8.U,A8.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');


YLABEL = '| I |   [A]';
XLABEL = 'U [V]';
YLIM = [1E-12 1];

A = A1;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(601);
    clf(601)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A2;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(602);
    clf(602)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A3;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(603);
    clf(603)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    

    
A = A4;
I = A.I;
U = A.U;

I0 = find(I > 0, 1);


I = abs(I);
% Rmin = find(U > 0.3067, 1);
% Rmax = find(U > 0.5073, 1);
% 
% P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
% R = exp(polyval(P, U));
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(604);
    clf(604)
    
        semilogy(U,I,'k', 'LineWidth', 1);
%         text(U(I0),I(I0), [' \leftarrowJ_0 = ',num2str(I(I0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
%         semilogy(U,I,'k', 'LineWidth', 1);
        
        hold on
%         semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A5;

I = A.I;
U = A.U;
I = abs(I);
figure(605);
    clf(605)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim([1E-11 1])
    grid();


A = A6;

I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.5, 1);
Rmax = find(U > 0.599, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(606);
    clf(606)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A7;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(607);
    clf(607)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();


A = A8;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(608);
    clf(608)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
<<<<<<< HEAD
%     ylim([1E-11 1])
=======
2% Change default axes fonts.
set(0,'DefaultAxesFontName', 'Times New Roman')
set(0,'DefaultAxesFontSize', 12)

% Change default text fonts.
set(0,'DefaultTextFontname', 'Times New Roman')
set(0,'DefaultTextFontSize', 10)

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
%[A6.U,A6.I] = readBLA('../Messwerte/');

[A6.U,A6.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');
[A7.U,A7.I] = readBLA('../Messwerte/Wafer120502_z6s6_UI_Kennlinie_Finger_groß_unten_dunkel_neu_gut.txt');
% 
% 
% [A4.U,A4.I] = readBLA('../Messwerte/Wafer120502_z6s6_GK02_UI_-1_Kennlinie_neu_gut.txt');
 [A8.U,A8.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');


YLABEL = '| I |   [A]';
XLABEL = 'U [V]';
YLIM = [1E-12 1];

A = A1;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(601);
    clf(601)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
=======
>>>>>>> refs/heads/özgü
    ylim(YLIM)
    grid();
    
    
A = A2;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(602);
    clf(602)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A3;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(603);
    clf(603)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    

    
A = A4;
I = A.I;
U = A.U;

I0 = find(I > 0, 1);


I = abs(I);
% Rmin = find(U > 0.3067, 1);
% Rmax = find(U > 0.5073, 1);
% 
% P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
% R = exp(polyval(P, U));
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(604);
    clf(604)
    
        semilogy(U,I,'k', 'LineWidth', 1);
%         text(U(I0),I(I0), [' \leftarrowJ_0 = ',num2str(I(I0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
%         semilogy(U,I,'k', 'LineWidth', 1);
        
        hold on
%         semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A5;

I = A.I;
U = A.U;
I = abs(I);
figure(605);
    clf(605)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim([1E-11 1])
    grid();


A = A6;

I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.5, 1);
Rmax = find(U > 0.599, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(606);
    clf(606)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A7;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(607);
    clf(607)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();


A = A8;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(608);
    clf(608)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
>>>>>>> branch 'master' of https://github.com/unizeug/TBH_lab.git
    grid();
    
    
    
=======
2% Change default axes fonts.
set(0,'DefaultAxesFontName', 'Times New Roman')
set(0,'DefaultAxesFontSize', 12)

% Change default text fonts.
set(0,'DefaultTextFontname', 'Times New Roman')
set(0,'DefaultTextFontSize', 10)

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
%[A6.U,A6.I] = readBLA('../Messwerte/');

[A6.U,A6.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');
[A7.U,A7.I] = readBLA('../Messwerte/Wafer120502_z6s6_UI_Kennlinie_Finger_groß_unten_dunkel_neu_gut.txt');
% 
% 
% [A4.U,A4.I] = readBLA('../Messwerte/Wafer120502_z6s6_GK02_UI_-1_Kennlinie_neu_gut.txt');
 [A8.U,A8.I] = readBLA('../Messwerte/Wafer120502_z7s7_Biggi_UI_Kennlinie_beleuchtet.txt');


YLABEL = '| I |   [A]';
XLABEL = 'U [V]';
YLIM = [1E-12 1];

A = A1;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(601);
    clf(601)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A2;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(602);
    clf(602)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A3;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.3067, 1);
Rmax = find(U > 0.5073, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(603);
    clf(603)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    

    
A = A4;
I = A.I;
U = A.U;

I0 = find(I > 0, 1);


I = abs(I);
% Rmin = find(U > 0.3067, 1);
% Rmax = find(U > 0.5073, 1);
% 
% P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
% R = exp(polyval(P, U));
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(604);
    clf(604)
    
        semilogy(U,I,'k', 'LineWidth', 1);
%         text(U(I0),I(I0), [' \leftarrowJ_0 = ',num2str(I(I0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
%         semilogy(U,I,'k', 'LineWidth', 1);
        
        hold on
%         semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A5;

I = A.I;
U = A.U;
I = abs(I);
figure(605);
    clf(605)
        semilogy(U,I,'k');
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim([1E-11 1])
    grid();


A = A6;

I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.5, 1);
Rmax = find(U > 0.599, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(606);
    clf(606)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
A = A7;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(607);
    clf(607)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();


A = A8;
I = A.I;
U = A.U;
I = abs(I);
Rmin = find(U > 0.49, 1);
Rmax = find(U > 0.57, 1);

P = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)), 1);
R = exp(polyval(P, U));
U0 = find(U > 0, 1);
          

% p = polyfit(U(Rmin:Rmax),log(I(Rmin:Rmax)),1);
% R = logspace(U(Rmin),U(Rmax),(Rmax - Rmin)+1)';
%R = p(1) .* U + p(2);
%R = polyval(p, U);

figure(608);
    clf(608)
        semilogy(U,I,'k', 'LineWidth', 1);
       
        text(U(U0),R(U0), [' \leftarrowJ_0 = ',num2str(R(U0),'%3.5e\n')], 'HorizontalAlignment','left','Margin',2, 'FontSize', 13, 'EdgeColor','black', 'BackgroundColor',[.9 .9 .9]);
        
        hold on
        semilogy(U(1:Rmax),R(1:Rmax),'-.r', 'LineWidth', 3);
        hold off
        
        legend('Diodenkennlinie','Verlaengerung des schockley Bereichs',2)
        
    ylabel(YLABEL)
    xlabel(XLABEL)
    ylim(YLIM)
    grid();
    
    
    
>>>>>>> branch 'master' of https://github.com/unizeug/TBH_lab.git
