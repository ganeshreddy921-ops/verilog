
module remove_one_vowel_and_shift(
	input [7:0] i1,i2,i3,i4,i5,i6,i7,i8,
	output reg [7:0] y1,y2,y3,y4,y5,y6,y7,y8);
	
	
always @*
	case (1)
		i1=="_":
			{y1,y2,y3,y4,y5,y6,y7,y8}={i2,i3,i4,i5,i6,i7,i8," "};
		i2=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i3,i4,i5,i6,i7,i8," "};
		i3=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i4,i5,i6,i7,i8," "};
		i4=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i5,i6,i7,i8," "};
		i5=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i4,i6,i7,i8," "};
		i6=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i4,i5,i7,i8," "};
		i7=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i4,i5,i6,i8," "};
		i8=="_":
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i4,i5,i6,i7," "};
		default:
		{y1,y2,y3,y4,y5,y6,y7,y8}={i1,i2,i3,i4,i5,i6,i7,i8};
		endcase
		endmodule
		
