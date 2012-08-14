g


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

[A.U,A.I] = readBLA('../Messwerte/dunkel_sperrsättigungsstrom.txt')

figure(600);
    clf(600)
    hold on
        semilogy(U,I,'k');
    hold off
%     legend('\rho = -1','\rho = -1/3','\rho = 0')
    ylabel('[A]')
    xlabel('[V]')
%     xlim([-22,-15])
    grid();
    
    
