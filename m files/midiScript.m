function [] = midiScript( fileName, r1, r2 )
% create a song output to 'filename' trained on midifiles r1 - r2

% create a different network for each track
net0 = elmannet;
net1 = elmannet;
net2 = elmannet;
net3 = elmannet;
net4 = elmannet;
net5 = elmannet;
net6 = elmannet;
net7 = elmannet;
net8 = elmannet;
net9 = elmannet;
net10 = elmannet;
net11 = elmannet;
net12 = elmannet;
net13 = elmannet;
net14 = elmannet;
net15 = elmannet;

% create a different matrix to store data for each track
alldata0 = zeros(1,9);
alldata1 = zeros(1,9);
alldata2 = zeros(1,9);
alldata3 = zeros(1,9);
alldata4 = zeros(1,9);
alldata5 = zeros(1,9);
alldata6 = zeros(1,9);
alldata7 = zeros(1,9);
alldata8 = zeros(1,9);
alldata9 = zeros(1,9);
alldata10 = zeros(1,9);
alldata11 = zeros(1,9);
alldata12 = zeros(1,9);
alldata13 = zeros(1,9);
alldata14 = zeros(1,9);
alldata15 = zeros(1,9);

% go through all midi files and add them into one big matrix
for i = r1:r2
% read in next song
nextSong = readmidi(strcat(int2str(i), '.mid'));
%nextSong = readmidi('9.mid');
nextSong = midiInfo(nextSong, 0);
% seperate midi by tracks
nextSong = sortrows(nextSong, 1);
% add row to appropriate track data
[srow,scol] = size(nextSong);
for j = 1: srow
    key = findKey(nextSong, j);
    currentRow = nextSong(j,:);
    currentNote = addNote(currentRow, key);
    [trash, checkCol] = size(currentNote);
    if checkCol > 1
        trackNumber = currentRow(1);
        channelNumber = currentRow(2);
        % put row in the right track 
        % note: this is a terrible implementation, maybe spelled wrong
        if trackNumber == 0
            alldata0 = [alldata0; currentNote];
        elseif trackNumber == 1
            alldata1 = [alldata1; currentNote];
        elseif trackNumber == 2
            alldata2 = [alldata2; currentNote];
        elseif trackNumber == 3
            alldata3 = [alldata3; currentNote];
        elseif trackNumber == 4
            alldata4 = [alldata4; currentNote];
        elseif trackNumber == 5
            alldata5 = [alldata5; currentNote];
        elseif trackNumber == 6
            alldata6 = [alldata6; currentNote];
        elseif trackNumber == 7
            alldata7 = [alldata7; currentNote];
        elseif trackNumber == 8
            alldata8 = [alldata8; currentNote];
        elseif trackNumber == 9
            alldata9 = [alldata9; currentNote];
        elseif trackNumber == 10
            alldata10 = [alldata10; currentNote];
        elseif trackNumber == 11
            alldata11 = [alldata11; currentNote];
        elseif trackNumber == 12
            alldata12 = [alldata12; currentNote];
        elseif trackNumber == 13
            alldata13 = [alldata13; currentNote];
        elseif trackNumber == 14
            alldata14 = [alldata14; currentNote];
        elseif trackNumber == 15
            alldata15 = [alldata15; currentNote];
        end
    end
end

% should add a zero row between songs to clear context in each data
% note: too lazy to do this
% alldata0 = [alldata0; zeros(1,9)];
% alldata1 = [alldata1; zeros(1,9)];
% alldata2 = [alldata2; zeros(1,9)];
% alldata3 = [alldata3; zeros(1,9)];
% alldata4 = [alldata4; zeros(1,9)];
% alldata5 = [alldata5; zeros(1,9)];
% alldata6 = [alldata6; zeros(1,9)];
% alldata7 = [alldata7; zeros(1,9)];
% alldata8 = [alldata8; zeros(1,9)];
% alldata9 = [alldata9; zeros(1,9)];
% alldata10 = [alldata10; zeros(1,9)];
% alldata11 = [alldata11; zeros(1,9)];
% alldata12 = [alldata12; zeros(1,9)];
% alldata13 = [alldata13; zeros(1,9)];
% alldata14 = [alldata14; zeros(1,9)];
% alldata15 = [alldata15; zeros(1,9)];
end

trainNetworks;

% create midi file from song data matrix and return name
midi = matrix2midi(midiFile);
writemidi(midi, fileName);

% play the midi song
[y,Fs] = midi2audio(fileName);
soundsc(y, Fs);  % FM-synth