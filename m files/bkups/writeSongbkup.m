function [ song ] = writeSong( time, start, net )
%write a song of length size
song = [];
next = start;
% total time of song
totalTime = 100.0;

% add notes to song
for i = 1: ceil(totalTime/time)
    % get next note and put through network
    song(i,:) = next;
    [x,y,z] = sim(net,next);
    minNeg = 0;
    % adjust note probabilities by removing negative values
    for j = 1:9
        if x(j) < minNeg
            minNeg = x(j);
        end
    end
    addArray = ones(1,9) * abs(minNeg);
    x = x + addArray';

    % use probabilities to choose next note
    next = nextNote(x);
end
    % add chosen note to song
    [r,c] = size(song);
    song(r+1,:) = next;
end