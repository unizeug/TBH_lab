%Simulativer Kanal:
function [U,I]=readBLA(File)

% Slurp in all lines.
f = fopen(File);
c = textscan(f,'%s','Delimiter','\n');
lines = c{1};
fclose(f);

% Remove headers.
lines(1:1) = [];

% convert Strings to numbers
b = str2num(char(lines));

U = b(:,2);
I = b(:,3);

% replace 0 (in electric current values [A]) with the smallest possible
% value
I(I==0) = realmin;

% log(|I|)

%I = abs(I);
