function [ songData ] = parseMidi( midiFile )
% turn midi into note vectors

midi = readmidi(midiFile);

info = midiInfo(midi,0);
[row, trash] = size(info);

songData = zeros(row,25);

for i = 1:row
    nextLine = info(i,:);
    nextNote = addNote(nextLine);
    songData(i,:) = nextNote;
end

end

