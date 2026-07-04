module hw35(
	input [7:0] i1,i2,i3,i4,i5,i6,i7,i8,
	output [7:0] y1,y2,y3,y4,y5,y6,y7,y8
);

//include ATOZ.txt; 
	wire [7:0] a1,a2,a3,a4,a5,a6,a7,a8;
	wire [7:0] b1,b2,b3,b4,b5,b6,b7,b8;
	wire [7:0] d1,d2,d3,d4,d5,d6,d7,d8;
	wire [7:0] c1,c2,c3,c4,c5,c6,c7,c8;
	wire [7:0] e1,e2,e3,e4,e5,e6,e7,e8;
	wire [7:0] f1,f2,f3,f4,f5,f6,f7,f8;
	wire [7:0] g1,g2,g3,g4,g5,g6,g7,g8;
	wire [7:0] h1,h2,h3,h4,h5,h6,h7,h8;

	vowelfilter G1 (i1,a1);
	vowelfilter G2 (i2,a2);
	vowelfilter G3 (i3,a3);
	vowelfilter G4 (i4,a4);
	vowelfilter G5 (i5,a5);
	vowelfilter G6 (i6,a6);
	vowelfilter G7 (i7,a7);
	vowelfilter G8 (i8,a8);

	remove_one_vowel_and_shift STEP1//by instatiating we do for each bit
	(a1,a2,a3,a4,a5,a6,a7,a8, b1,b2,b3,b4,b5,b6,b7,b8);
	remove_one_vowel_and_shift STEP2
	(b1,b2,b3,b4,b5,b6,b7,b8, c1,c2,c3,c4,c5,c6,c7,c8);
	remove_one_vowel_and_shift STEP3
	(c1,c2,c3,c4,c5,c6,c7,c8, d1,d2,d3,d4,d5,d6,d7,d8);
	remove_one_vowel_and_shift STEP4
	(d1,d2,d3,d4,d5,d6,d7,d8, e1,e2,e3,e4,e5,e6,e7,e8);
	remove_one_vowel_and_shift STEP5
	(e1,e2,e3,e4,e5,e6,e7,e8, f1,f2,f3,f4,f5,f6,f7,f8);
	remove_one_vowel_and_shift STEP6
	(f1,f2,f3,f4,f5,f6,f7,f8, g1,g2,g3,g4,g5,g6,g7,g8);
	remove_one_vowel_and_shift STEP7
	(g1,g2,g3,g4,g5,g6,g7,g8, h1,h2,h3,h4,h5,h6,h7,h8);
	remove_one_vowel_and_shift STEP8
	(h1,h2,h3,h4,h5,h6,h7,h8, y1,y2,y3,y4,y5,y6,y7,y8);
endmodule
