function [ output ] = nextNote( input )
% get next note to play based on last note

% set up note values to use with probabilities in roulette
values = [];
for i = 1:7
    values = [values,i];
end

probabilities = input;
output = zeros(9,1);
% output 1 is the time
output(1) = probabilities(1);
% we dont care about the duration or channel
% have to remove 9 first since it shrinks size
probabilities(9) = [];
probabilities(1) = [];


% take 10 random samples of note 'values' using probability distribution
r = randsample(values, 10, true, probabilities);
next = mode(r);

% adjust for 1 for duration in output(1)
output(next+1) = 1;

end