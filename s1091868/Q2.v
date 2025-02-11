model Q2(
				input [15:0] d,
				input [15:0] c,
				input [15:0] s,
				input [15:0] address
);

	initial 
		begin
				address = 16'h0000;
		end
	
	always @(*)
		begin
		
			if(c==0 && (s==0 || s==1)) begin 
				address = d;
			end
			
			else if(c==1 && s==0) begin
				address = d+1;
			end
			
			else if(c==1 && s==1) begin
				address = d-1;
			end
			
		end
		
endmodule
