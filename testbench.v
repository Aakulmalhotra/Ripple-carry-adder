testbench of ripple carry adder
module testbench;
reg [15:0] a,b;
reg cin;
wire [15:0] sum;
wire cout;
 
  carry_look_ahead_16bit uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  a=0; b=0; cin=0;
  #20 a=16'd18; b=16'd2; cin=16'd20;
  #20 a=16'd19; b=16'd24; cin=16'd1;
  #20 a=16'd128; b=1'd0; cin=16'd0;
  #20 a=16'd100; b=16'd29; cin=16'd1;
end
 
initial
  $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", a,b,cin,sum,cout);
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
