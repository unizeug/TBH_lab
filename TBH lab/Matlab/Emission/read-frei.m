


% Slurp in all lines.
f = fopen('../Messwerte/dunkel_sperrsättigungsstrom.txt');
c = textscan(f,'%s','Delimiter','\n');
lines = c{1};
fclose(f);

% Remove headers.
lines(1:14:end) = [];
lines(1:13:end) = [];
lines(1:12:end) = [];
lines(1:11:end) = [];

% Extract data.
output = zeros(numel(lines),2);
for i = 1:numel(lines)
    x = lines{i};
    output(i,1) = str2double(x(28:end));
    output(i,2) = str2double(x(28:end));
end
output