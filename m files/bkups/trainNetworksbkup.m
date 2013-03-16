% do all the differnt track shit seperately 

% remove first row of input and last of out
% to shift input desired output mapping

% create a c note for initial input
startNote = zeros(1,9);
startNote(1) = .2;
startNote(2) = 1;

%Average the times from every channel (better way of doing this)
time = (mean(mean(alldata0(:,1)) + mean(alldata1(:,1))+ mean(alldata2(:,1))+ mean(alldata3(:,1)) + mean(alldata4(:,1))+ mean(alldata5(:,1))+ mean(alldata6(:,1))+ mean(alldata7(:,1))+ mean(alldata8(:,1))+ mean(alldata9(:,1))+ mean(alldata10(:,1))+ mean(alldata11(:,1))+ mean(alldata12(:,1))+ mean(alldata13(:,1))+ mean(alldata14(:,1))+ mean(alldata15(:,1))));

%time = mean(alldata0(:,1));
c10time = 0;
counter = 0;

for n = 0:15
    input = eval(['alldata' num2str(n)]);
    [row,col] = size(input);
    for r = 1:row
        if input(r,9) == 10
            c10time = c10time + input(r,1);
            counter = counter + 1;
        end
    end
end

if counter > 0
    time = c10time / counter;
end

time = time / 1.5;

%initiate datamatrix
midiFile = [];
input0 = alldata0;
[row, col] = size(input0);
if row  ~= 1
input0(1,:) = [];
output0 = alldata0;
output0(row,:) = [];
% train
net0 = train(net0, input0', output0');
channel = mode(input0(:,9));
songData0 = songtoMidi(time, writeSong(time, startNote', net0),0, channel);
midiFile = [midiFile;songData0];
end

input1 = alldata1;
[row, col] = size(input1);
if row  ~= 1
input1(1,:) = [];
output1 = alldata1;
output1(row,:) = [];
net1 = train(net1, input1', output1');
channel = mode(input1(:,9));
songData1 = songtoMidi(time,writeSong(time, startNote', net1),1, channel);
midiFile = [midiFile;songData1];
end

input2 = alldata2;
[row, col] = size(input2);
if row  ~= 1
input2(1,:) = [];
output2 = alldata2;
output2(row,:) = [];
net2 = train(net2, input2', output2');
channel = mode(input2(:,9));
songData2 = songtoMidi(time,writeSong(time, startNote', net2),2, channel);
midiFile = [midiFile;songData2];
end

input3 = alldata3;
[row, col] = size(input3);
if row  ~= 1
input3(1,:) = [];
output3 = alldata3;
output3(row,:) = [];
net3 = train(net3, input3', output3');
channel = mode(input3(:,9));
songData3 = songtoMidi(time,writeSong(time, startNote', net3),3, channel);
midiFile = [midiFile;songData3];
end

input4 = alldata4;
[row, col] = size(input4);
if row  ~= 1
input4(1,:) = [];
output4 = alldata4;
output4(row,:) = [];
net4 = train(net4, input4', output4');
channel = mode(input4(:,9));
songData4 = songtoMidi(time,writeSong(time, startNote', net4),4, channel);
midiFile = [midiFile;songData4];
end

input5 = alldata5;
[row, col] = size(input5);
if row  ~= 1
input5(1,:) = [];
output5 = alldata5;
output5(row,:) = [];
net5 = train(net5, input5', output5');
channel = mode(input5(:,9));
songData5 = songtoMidi(time,writeSong(time, startNote', net5),5, channel);
midiFile = [midiFile;songData5];
end

input6 = alldata6;
[row, col] = size(input6);
if row  ~= 1
input6(1,:) = [];
output6 = alldata6;
output6(row,:) = [];
net6 = train(net6, input6', output6');
channel = mode(input6(:,9));
songData6 = songtoMidi(time,writeSong(time, startNote', net6),6, channel);
midiFile = [midiFile;songData6];
end

input7 = alldata7;
[row, col] = size(input7);
if row  ~= 1
input7(1,:) = [];
output7 = alldata7;
output7(row,:) = [];
net7 = train(net7, input7', output7');
channel = mode(input7(:,9));
songData7 = songtoMidi(time,writeSong(time, startNote', net7),7, channel);
midiFile = [midiFile;songData7];
end

input8 = alldata8;
[row, col] = size(input8);
if row  ~= 1
input8(1,:) = [];
output8 = alldata8;
output8(row,:) = [];
net8 = train(net8, input8', output8');
channel = mode(input8(:,9));
songData8 = songtoMidi(time,writeSong(time, startNote', net8),8, channel);
midiFile = [midiFile;songData8];
end

input9 = alldata9;
[row, col] = size(input9);
if row  ~= 1
input9(1,:) = [];
output9 = alldata9;
output9(row,:) = [];
net9 = train(net9, input9', output9');
channel = mode(input9(:,9));
songData9 = songtoMidi(time,writeSong(time, startNote', net9),9, channel);
midiFile = [midiFile;songData9];
end

input10 = alldata10;
[row, col] = size(input10);
if row  ~= 1
input10(1,:) = [];
output10 = alldata10;
output10(row,:) = [];
net10 = train(net10, input10', output10');
channel = mode(input10(:,9));
songData10 = songtoMidi(time,writeSong(time, startNote', net10),10, channel);
midiFile = [midiFile;songData10];
end

input11 = alldata11;
[row, col] = size(input11);
if row  ~= 1
input11(1,:) = [];
output11 = alldata11;
output11(row,:) = [];
net11 = train(net11, input11', output11');
channel = mode(input11(:,9));
songData11 = songtoMidi(time,writeSong(time, startNote', net11),11, channel);
midiFile = [midiFile;songData11];
end

input12 = alldata12;
[row, col] = size(input12);
if row  ~= 1
input12(1,:) = [];
output12 = alldata12;
output12(row,:) = [];
net12 = train(net12, input12', output12');
channel = mode(input12(:,9));
songData12 = songtoMidi(time,writeSong(time, startNote', net12),12, channel);
midiFile = [midiFile;songData12];
end

input13 = alldata13;
[row, col] = size(input13);
if row  ~= 1
input13(1,:) = [];
output13 = alldata13;
output13(row,:) = [];
net13 = train(net13, input13', output13');
channel = mode(input13(:,9));
songData13 = songtoMidi(time,writeSong(time, startNote', net13),13, channel);
midiFile = [midiFile;songData13];
end

input14 = alldata14;
[row, col] = size(input14);
if row  ~= 1
input14(1,:) = [];
output14 = alldata14;
output14(row,:) = [];
net14 = train(net14, input14', output14');
channel = mode(input14(:,9));
songData14 = songtoMidi(time,writeSong(time, startNote', net14),14, channel);
midiFile = [midiFile;songData14];
end

input15 = alldata15;
[row, col] = size(input15);
if row  ~= 1
input15(1,:) = [];
output15 = alldata15;
output15(row,:) = [];
net15 = train(net15, input15', output15');
channel = mode(input15(:,9));
songData15 = songtoMidi(time,writeSong(time, startNote', net15),15, channel);
midiFile = [midiFile;songData15];
end

midiFile = sortrows(midiFile,5);



