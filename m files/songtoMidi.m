function [ midiMatrix ] = songtoMidi( timeStep, songData, trackNumber, channel )
%convert created song matrix to midi

[row,col] = size(songData);
midiMatrix = zeros(row,6);

for i = 1:row
    % build next row of the midi file
    % col 1 is trackNumber
    midiRow = zeros(1,6);
    midiRow(1) = trackNumber;
    % col 2 is channel - found from mode channel of the track
    midiRow(2) = channel;
    time = songData(i,1);
    
    % convert chord degree to actual note in the key
        % find key
    key = findKey(songData, i);
    for j = 2:col - 1
        if songData(i,j) == 1
            % chord degree
            note = j - 1;
            if note == 1
                note = key;
            elseif note == 2
                note = key + 2;
            elseif note == 3
                note = key + 4;
            elseif note == 4
                note = key + 5;
            elseif note == 5
                note = key + 7;
            elseif note == 6
                note = key + 9;
            elseif note == 7
                note = key + 11;
            end
            
        end
    end
    %column 3 is the note value, add 36 so middle c = 0
    midiRow(3) = note + 48;
    %column 4 is velocity (100 for now)
    midiRow(4) = 100;
    %column 5 is column 6 of the above row (start of note)
    if i == 1
        midiRow(5) = 0;
    else
        midiRow(5) = timeStep * i;
    end
    %column 6 = endtime (Start + time)
    midiRow(6) = midiRow(5) + time;
    % if the last note hasnt ended yet, dont put a new one
    if i > 1 && midiMatrix(i-1,6) < midiRow(5)
        midiMatrix(i,:) = midiRow;
    end
end
end