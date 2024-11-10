function [result] = longestWord( inputFile )
%
% inputFile specifies the file whose characters should
% be analyzed.
%
% Periods, commas, apostrophes, and other punctuation
% marks DO NOT count towards the length of a word.
% For example, in the sentence “The quick red fox
% jumped over the lazy brown dog.” the last word is
% considered to have a length of three (ignoring the
% period).
%
% If inputFile cannot be opened, the function will
% print a descriptive error message and return the
% value -1.
%

%Longestword:
function longest = longestWord(inputFile)
if exist(inputFile, 'file')
words = strsplit(regexprep(fileread(inputFile), '[.,?'']', ' '));
longest = '';
maxLength = 0;
for i = 1:length(words)
wordLength = length(words{i});
if wordLength > maxLength
longest = words{i};
maxLength = wordLength;
end
end
else
disp('File not found.')
longest = -1;
end
end
