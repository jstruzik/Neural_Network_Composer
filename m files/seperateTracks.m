% do all the differnt track shit seperately 

% remove first row of input and last of out
% to shift input desired output mapping
input0 = alldata0;
input0(1,:) = [];
output0 = alldata0;
[row, col] = size(alldata0);
output0(row,:) = [];
% train
net0 = train(net0, input0', output0');

input1 = alldata1;
input1(1,:) = [];
output1 = alldata1;
[row, col] = size(alldata1);
output1(row,:) = [];
net1 = train(net1, input1', output1');

input2 = alldata2;
input2(1,:) = [];
output2 = alldata2;
[row, col] = size(alldata2);
output2(row,:) = [];
net2 = train(net2, input2', output2');

input3 = alldata3;
input3(1,:) = [];
output3 = alldata3;
[row, col] = size(alldata3);
output3(row,:) = [];
net3 = train(net3, input3', output3');

input4 = alldata4;
input4(1,:) = [];
output4 = alldata4;
[row, col] = size(alldata4);
output4(row,:) = [];
net4 = train(net4, input4', output4');

inpu5 = alldata5;
input5(1,:) = [];
output5 = alldata5;
[row, col] = size(alldata5);
output5(row,:) = [];
net5 = train(net5, input5', output5');

input6 = alldata6;
input6(1,:) = [];
output6 = alldata6;
[row, col] = size(alldata6);
output6(row,:) = [];
net6 = train(net6, input6', output6');

input7 = alldata7;
input7(1,:) = [];
output7 = alldata7;
[row, col] = size(alldata7);
output7(row,:) = [];
net7 = train(net7, input7', output7');

input8 = alldata8;
input8(1,:) = [];
output8 = alldata8;
[row, col] = size(alldata8);
output8(row,:) = [];
net8 = train(net8, input8', output8');

input9 = alldata9;
input9(1,:) = [];
output9 = alldata9;
[row, col] = size(alldata9);
output9(row,:) = [];
net9 = train(net9, input9', output9');

input10 = alldata10;
input10(1,:) = [];
output10 = alldata10;
[row, col] = size(alldata10);
output10(row,:) = [];
net10 = train(net10, input10', output10');

input11 = alldata11;
input11(1,:) = [];
output11 = alldata11;
[row, col] = size(alldata11);
output11(row,:) = [];
net11 = train(net11, input11', output11');

input12 = alldata12;
input12(1,:) = [];
output12 = alldata12;
[row, col] = size(alldata12);
output12(row,:) = [];
net12 = train(net12, input12', output12');

input13 = alldata13;
input13(1,:) = [];
output13 = alldata13;
[row, col] = size(alldata13);
output13(row,:) = [];
net13 = train(net13, input13', output13');

input14 = alldata14;
input14(1,:) = [];
output14 = alldata14;
[row, col] = size(alldata14);
output14(row,:) = [];
net14 = train(net14, input14', output14');

input15 = alldata15;
input15(1,:) = [];
output15 = alldata15;
[row, col] = size(alldata15);
output15(row,:) = [];
net15 = train(net15, input15', output15');

% create a c note for initial input
startNote = zeros(1,8);
startNote(1) = .2;
startNote(2) = 1;
startNote(9) = 64;

% run network with start not of c 
songData0 = writeSong(128, startNote', net0);
songData1 = writeSong(128, startNote', net1);
songData2 = writeSong(128, startNote', net2);
songData3 = writeSong(128, startNote', net3);
songData4 = writeSong(128, startNote', net4);
songData5 = writeSong(128, startNote', net5);
songData6 = writeSong(128, startNote', net6);
songData7 = writeSong(128, startNote', net7);
songData8 = writeSong(128, startNote', net8);
songData9 = writeSong(128, startNote', net9);
songData10 = writeSong(128, startNote', net10);
songData11 = writeSong(128, startNote', net11);
songData12 = writeSong(128, startNote', net12);
songData13 = writeSong(128, startNote', net13);
songData14 = writeSong(128, startNote', net14);
songData15 = writeSong(128, startNote', net15);








