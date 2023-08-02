# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7k160t}
	set DSPFamily {kintex7}
	set DSPPackage {fbg484}
	set DSPSpeed {-2}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/abbas/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {321923303}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {dc_remover}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{dc_remover_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{dc_remover.vhd} -lib {xil_defaultlib}}
		{{dc_remover_clock.xdc}}
		{{dc_remover.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.0001
	set SimulationTime {100210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/abbas/Desktop/GITHUB/sysgen/netlist}
	set TopLevelModule {dc_remover}
	set TopLevelSimulinkHandle 2659
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface sig_in Name {sig_in}
	dict set TopLevelPortInterface sig_in Type Fix_16_15
	dict set TopLevelPortInterface sig_in ArithmeticType xlSigned
	dict set TopLevelPortInterface sig_in BinaryPoint 15
	dict set TopLevelPortInterface sig_in Width 16
	dict set TopLevelPortInterface sig_in DatFile {dc_remover_sig_in.dat}
	dict set TopLevelPortInterface sig_in IconText {sig_in}
	dict set TopLevelPortInterface sig_in Direction in
	dict set TopLevelPortInterface sig_in Period 1
	dict set TopLevelPortInterface sig_in Interface 0
	dict set TopLevelPortInterface sig_in InterfaceName {}
	dict set TopLevelPortInterface sig_in InterfaceString {DATA}
	dict set TopLevelPortInterface sig_in ClockDomain {dc_remover}
	dict set TopLevelPortInterface sig_in Locs {}
	dict set TopLevelPortInterface sig_in IOStandard {}
	dict set TopLevelPortInterface sig_out Name {sig_out}
	dict set TopLevelPortInterface sig_out Type Fix_16_15
	dict set TopLevelPortInterface sig_out ArithmeticType xlSigned
	dict set TopLevelPortInterface sig_out BinaryPoint 15
	dict set TopLevelPortInterface sig_out Width 16
	dict set TopLevelPortInterface sig_out DatFile {dc_remover_sig_out.dat}
	dict set TopLevelPortInterface sig_out IconText {sig_out}
	dict set TopLevelPortInterface sig_out Direction out
	dict set TopLevelPortInterface sig_out Period 1
	dict set TopLevelPortInterface sig_out Interface 0
	dict set TopLevelPortInterface sig_out InterfaceName {}
	dict set TopLevelPortInterface sig_out InterfaceString {DATA}
	dict set TopLevelPortInterface sig_out ClockDomain {dc_remover}
	dict set TopLevelPortInterface sig_out Locs {}
	dict set TopLevelPortInterface sig_out IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {dc_remover}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project