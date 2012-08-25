%csvread liest Tabelle
M1 = csvread('1_Intensitat_1_2V_4s_25mA_265umDistance_115pxl_z6s3_obenGross.csv');
M1(:,1) = [];

M1(:,2) = (M1(:,2));
M1(:,1) = M1(:,1)* (265*1E-6 / 115);


%semilogy in hold on hold off Umgebung -> keine Wirkung!!
% figure(1)
%     plot(M1(:,1),M1(:,2),'r');
%     hold on
%     plot(M1(:,1),log(M1(:,2)),'b');
%     hold off
%     % um die Steigung besser ablesen zu können
%     %xlim([1E-4 2E-4])
    
    %Diffusionslänge reziprok von Steigung pro 
    %Diffusionslaenge = 1/ (  (7.1-6.54)/100E-6  )
 
figure(1);
[AX H1 H2] = plotyy(M1(:,1),M1(:,2),M1(:,1),log(M1(:,2)),'plot');

% xlim([0 6*10^-4])
% AXIS('tight');

xlabel('Emissionsweite [um]');
set(get(AX(1),'Ylabel'),'String','exponentieller Verlauf');
set(get(AX(2),'Ylabel'),'String','logarithmischer Verlauf');
title('\bf Intensit�tsmessung der Emission');

set(H1,'LineWidth',0.5,'Color',[0 0 1],'LineStyle','+')
set(H2,'LineWidth',1,'Color',[1 0 0])
set(AX(1),'YColor',[0 0 1]);
set(AX(2),'YColor',[1 0 0]);