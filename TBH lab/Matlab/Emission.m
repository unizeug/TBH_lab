

M = csvread('Intensitat_1_2V_4s_25mA_265umDistance_115pxl.csv');
M(:,1) = [];

M(:,2) = log(M(:,2));
M(:,1) = M(:,1)* (220*1E-6 / 180);

figure(600);
    clf(600)
    hold on
        semilogy(M(:,1),M(:,2),'k');
    hold off
    % um die steigung besser ablesen zu können
    %xlim([1E-4 2E-4]);
    

    %Diffusionslänge reziprok von Steigung pro 
    1/ (  (7.1-6.54)/100E-6  )