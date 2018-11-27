vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v10_0_3
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_11
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_12
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/iomodule_v3_1_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v10_0_3 activehdl/microblaze_v10_0_3
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_12 activehdl/lmb_bram_if_cntlr_v4_0_12
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap iomodule_v3_1_1 activehdl/iomodule_v3_1_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_3 -93 \
"../../ipstatic/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_0/sim/bd_3914_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_1/sim/bd_3914_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_2/sim/bd_3914_ilmb_0.vhd" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_3/sim/bd_3914_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_12 -93 \
"../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_4/sim/bd_3914_dlmb_cntlr_0.vhd" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_5/sim/bd_3914_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" \
"../../ipstatic/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_6/sim/bd_3914_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_1 -93 \
"../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/ip/ip_7/sim/bd_3914_iomodule_0_0.vhd" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/bd_0/hdl/bd_3914.vhd" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/mcs_v2017/sim/cpu.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/video_support/clock_management/mmcm_fpro.v" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/video_support/clock_management/mmcm_fpro_clk_wiz.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" "+incdir+C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/bar/bar_src.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/uart/baud_gen.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/vga_sync/bram_fifo_fpro.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/frame_buffer/chu_frame_buffer_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_basic/chu_gpi.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_basic/chu_gpo.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/bridge/chu_mcs_bridge.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_support/chu_mmio_controller.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/bar/chu_rgb2gray_core .sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_basic/chu_timer.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/uart/chu_uart.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/bar/chu_vga_bar_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/bar/chu_vga_dummy_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/osd/chu_vga_osd_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/ghost/chu_vga_sprite_ghost_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/sprite/chu_vga_sprite_mouse_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/vga_sync/chu_vga_sync_core.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/video_support/chu_video_controller.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_support/fifo/fifo.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_support/fifo/fifo_ctrl.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/osd/font_rom.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/video_support/frame_counter.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/frame_buffer/frame_palette.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/frame_buffer/frame_src.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/ghost/ghost_ram.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/ghost/ghost_src.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/vga_sync/line_buffer.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/top/mcs_top_video.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/subsys/mmio_sys_vanilla.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/sprite/moue_ram.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/sprite/mouse_src.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/osd/osd_src.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/frame_buffer/ram320K.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/mmio_support/fifo/reg_file.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/bar/rgb2gray.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/video_support/sync_rw_port_ram.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/uart/uart.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/uart/uart_rx.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/mmio/uart/uart_tx.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/video/vga_sync/vga_sync.sv" \
"C:/Users/pongchu/Google Drive/code_listing_sv/fpga_mcs_sv_src/hdl/sys/subsys/video_sys_daisy.sv" \

vlog -work xil_defaultlib \
"glbl.v"

