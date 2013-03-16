Neural Network Composer
=======================

A series of Elman Neural Networks that generates unique songs trained from song input

midiScript.m: run this and it will automatically do everything - set which songs to use and also what the output name  of the midi is



writeSong.m: have each track network choose the notes they want to add, write a song



trainNetworks.m: deals with training the 16 neural nets (1 for each track)



addNote.m: convert raw midi info into a R26 vector representing duration, 2 octaves of notes, and a channel



nextNote.m: get the next note the network chooses using its output probabilities and roulette wheel

 algorithm

findKey.m: look over a window of notes surrounding the current note and decide 
which key it is based on occurrences of 1-3-5 notes (only considers major)



seperateTracks.m: setup input and output for each network - 1 network per track



songtoMidi.m: set up the networks chosen notes / durations / channel into the 6 column midi format