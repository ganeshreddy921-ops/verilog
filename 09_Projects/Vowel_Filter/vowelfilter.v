module vowelfilter (input [7:0]i,output reg [7:0]y);

always @*
begin
	case(i)
	"A","E","I","o","U": y="_";
	default: y=i;
	endcase
end
	
endmodule
