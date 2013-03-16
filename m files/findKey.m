function [ key ] = findKey( song, row )
%Figure out what key the current note is in the song
%by classifying a window around the current note

[songSize, trash] = size(song);
windowSize = 50;
windEnd = row + (windowSize / 2);
windStart = row - (windowSize / 2);
key = 0;

% keep track of all the note counts
c  = 0;
cS  = 0;
d  = 0; 
dS  = 0;
e  = 0;
f  = 0;
fS  = 0;
g  = 0;
gS  = 0;
a  = 0;
aS  = 0;
b  = 0; 

% set the indexes of window start and end
if windStart < 1
    windStart = 1;
end
if windEnd > songSize
    windEnd = songSize;
end

for i = windStart:windEnd
    note = song(i,3);
    note = mod(note, 12);
    % add note to counter
    if note == 0
        c  = c  + 1;
    elseif note == 1
        cS  = cS  + 1;
    elseif note == 2
        d  = d  + 1;
    elseif note == 3
        dS  = dS  + 1;
    elseif note == 4
        e  = e  + 1;
    elseif note == 5
        f  = f  + 1;
    elseif note == 6
        fS  = fS  + 1;
    elseif note == 7
        g  = g  + 1;
    elseif note == 8
        gS  = gS  + 1;
    elseif note == 9
        a  = a  + 1;
    elseif note == 10
        aS  = aS  + 1;
    elseif note == 11
        b  = b  + 1;
    end
end

% add the 1-3-5 notes of each key to choose 
cKey = c + e + g;
cSKey = cS + f + gS;
dKey = d + fS + a;
dSKey = dS + g + aS;
eKey = e + gS + b;
fKey = f + a + c;
fSKey = fS + cS + aS;
gKey = g + b + d;
gSKey = gS + c + dS;
aKey = a + cS + e;
aSKey = aS + d + f;
bKey = b + dS + fS;
keyID = max(cKey + cSKey + dKey + dSKey + eKey + fKey + fSKey + gKey + gSKey + aKey + aSKey + bKey);

% convert key to a number = key mod 12
if keyID == cKey
    key = 0;
elseif keyID == cSKey
    key = 1;
elseif keyID == dKey
    key = 2;
elseif keyID == dSKey
    key = 3; 
elseif keyID == eKey
    key = 4;
elseif keyID == fKey
    key = 5;
elseif keyID == fSKey
    key = 6;
elseif keyID == gKey
    key = 7;
elseif keyID == gSKey
    key = 8;
elseif keyID == aKey
    key = 9;
elseif keyID == aSKey
    key = 10;
elseif keyID == bKey
    key = 11;
end

end

