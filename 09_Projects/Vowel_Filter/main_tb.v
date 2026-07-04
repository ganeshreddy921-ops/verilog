module tb;
	reg [7:0] i1,i2,i3,i4,i5,i6,i7,i8;
	wire [7:0] y1,y2,y3,y4,y5,y6,y7,y8;

	hw35 KABALI (i1,i2,i3,i4,i5,i6,i7,i8,
	y1,y2,y3,y4,y5,y6,y7,y8);
	
	initial
	begin
		i1="S";
		i2="R";
		i3="I";
		i4="N";
		i5="I";
		i6="V";
		i7="A";
		i8="S";
		#1;
		$display ("--------------");

		$display
("%s%s%s%s%s%s%s%s",i1,i2,i3,i4,i5,i6,i7,i8);
		$display
("%s%s%s%s%s%s%s%s",y1,y2,y3,y4,y5,y6,y7,y8);
		$stop;

		i1="S";
		i2="R";
		i3="I";
		i4="N";
		i5="I";
		i6="V";
		i7="A";
		i8="S";
		#1;
		$display ("--------------");
		$display
("%s%s%s%s%s%s%s%s",i1,i2,i3,i4,i5,i6,i7,i8);
		$display
("%s%s%s%s%s%s%s%s",y1,y2,y3,y4,y5,y6,y7,y8);
		$stop;

		repeat (10)
		begin
			i1=$urandom_range(65,90);
			i2=$urandom_range(65,90);
			i3=$urandom_range(65,90);
			i4=$urandom_range(65,90);
			i5=$urandom_range(65,90);
			i6=$urandom_range(65,90);
			i7=$urandom_range(65,90);
			i8=$urandom_range(65,90);
			#1;
			$display ("--------------");
			$display
("%s%s%s%s%s%s%s%s",i1,i2,i3,i4,i5,i6,i7,i8);
			$display
("%s%s%s%s%s%s%s%s",y1,y2,y3,y4,y5,y6,y7,y8);
		end
	end
endmodule
