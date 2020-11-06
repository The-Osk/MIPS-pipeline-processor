library verilog;
use verilog.vl_types.all;
entity Jump_Address_Hold is
    port(
        out_IF_ID_Jump_Address: in     vl_logic_vector(31 downto 0);
        out_Jump_Address_Hold_Jump_Address: out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end Jump_Address_Hold;
