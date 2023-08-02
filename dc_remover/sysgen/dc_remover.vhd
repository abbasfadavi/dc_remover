-- Generated from Simulink block DC_remover/DC remover
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dc_remover_dc_remover is
  port (
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 )
  );
end dc_remover_dc_remover;
architecture structural of dc_remover_dc_remover is 
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal sig_in_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
begin
  out_x0 <= addsub1_s_net;
  sig_in_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.dc_remover_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "dc_remover_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 15,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => register2_q_net,
    b => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.dc_remover_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 31,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  counter2 : entity xil_defaultlib.dc_remover_xlcounter_free 
  generic map (
    core_name0 => "dc_remover_c_counter_binary_v12_0_i0",
    op_arith => xlSigned,
    op_width => 32
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    up => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  register1 : entity xil_defaultlib.dc_remover_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => sig_in_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.dc_remover_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_904fbb7f3a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => register2_q_net,
    b => counter2_op_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block DC_remover_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dc_remover_struct is
  port (
    sig_in : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sig_out : out std_logic_vector( 16-1 downto 0 )
  );
end dc_remover_struct;
architecture structural of dc_remover_struct is 
  signal sig_in_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
begin
  sig_in_net <= sig_in;
  sig_out <= addsub1_s_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dc_remover_x0 : entity xil_defaultlib.dc_remover_dc_remover 
  port map (
    in_x0 => sig_in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => addsub1_s_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dc_remover_default_clock_driver is
  port (
    dc_remover_sysclk : in std_logic;
    dc_remover_sysce : in std_logic;
    dc_remover_sysclr : in std_logic;
    dc_remover_clk1 : out std_logic;
    dc_remover_ce1 : out std_logic
  );
end dc_remover_default_clock_driver;
architecture structural of dc_remover_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => dc_remover_sysclk,
    sysce => dc_remover_sysce,
    sysclr => dc_remover_sysclr,
    clk => dc_remover_clk1,
    ce => dc_remover_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dc_remover is
  port (
    sig_in : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    sig_out : out std_logic_vector( 16-1 downto 0 )
  );
end dc_remover;
architecture structural of dc_remover is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "dc_remover,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0001,addsub=1,convert=1,counter=1,register=2,relational=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  dc_remover_default_clock_driver : entity xil_defaultlib.dc_remover_default_clock_driver 
  port map (
    dc_remover_sysclk => clk,
    dc_remover_sysce => '1',
    dc_remover_sysclr => '0',
    dc_remover_clk1 => clk_1_net,
    dc_remover_ce1 => ce_1_net
  );
  dc_remover_struct : entity xil_defaultlib.dc_remover_struct 
  port map (
    sig_in => sig_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    sig_out => sig_out
  );
end structural;
