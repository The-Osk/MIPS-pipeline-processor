library verilog;
use verilog.vl_types.all;
entity Forwarding is
    port(
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0);
        out_ID_EXE_Reg_Write_Ctrl: in     vl_logic;
        out_Control_Unit_Reg_Write_Ctrl: in     vl_logic;
        out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address: in     vl_logic_vector(4 downto 0);
        out_EXE_MEM_Reg_Write_ctrl: in     vl_logic;
        out_EXE_MEM_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address1: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address2: in     vl_logic_vector(4 downto 0)
    );
end Forwarding;
