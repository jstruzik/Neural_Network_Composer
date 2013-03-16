function [ noteVector ] = addNote( input, key )
%bring within 2 octave range

noteVector = zeros(1,9);
note = input(3);

%mod 12 results to find note degree
noteID = mod(note,12);
noteID = noteID - key;

% if offkey note throw it out
if noteID == 1 || noteID == 3 || noteID == 6 || noteID == 8 || noteID == 10
    noteVector = zeros(1);
    % if in key, set it to a degree
else
    if noteID == 0
        note = 2;
    elseif noteID == 2
        note = 3;
    elseif noteID == 4
        note = 4;
    elseif noteID == 5
        note = 5;
    elseif noteID == 7
        note = 6;
    elseif noteID == 9
        note = 7;
    elseif noteID == 11
        note = 8;
    end

    noteVector(note) = 1;
    time = input(6) - input(5);
    noteVector(1) = time;
    channel = input(2);
    noteVector(9) = channel;
end

end