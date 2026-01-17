# 5-Bit Carry Lookahead Adder (CLA)

A complete VLSI design implementation of a 5-bit Carry Lookahead Adder, including digital design, layout, and circuit simulations.

## Project Overview

This project contains a full-stack implementation of a 5-bit CLA adder with:
- **Verilog HDL** design and testbenches
- **MAGIC** layout designs for IC physical implementation
- **ngspice** circuit simulations
- **Post-layout simulations** for timing and power analysis

## Directory Structure

### `/VERILOG`
Contains the Verilog implementation of the CLA adder:
- `cla.v` - Main 5-bit CLA adder module
- `cla_tb.v` - Testbench for functional verification
- `cla_sim` - Simulation executable/results
- `dump_cla_adder.vcd` - Waveform dump file for GTKWave visualization

### `/MAGIC`
Contains layout designs for the CLA and all basic components:
- `cla_final.mag` - Complete 5-bit CLA layout
- `cla_final.ext` - Extracted netlist from layout
- `cla_final.spice` - SPICE netlist from layout
- Component layouts:
  - `and2.mag`, `and3.mag`, `and4.mag`, `and5.mag` - AND gates
  - `or2.mag`, `or3.mag`, `or4.mag`, `or5.mag`, `or5Stand.mag`, `or6_test.sp` - OR gates
  - `inv.mag` - Inverter
  - `xor.mag` - XOR gate
  - `dff.mag` - D flip-flop
- `SCN6M_DEEP.09.tech27` - MAGIC technology file for layout

### `/POSTLAYOUTSIM`
Contains post-layout circuit simulation files:
- `cla_final.spice` / `cla_final.cir` - CLA post-layout SPICE netlist
- `CLA_post.cir` - CLA post-layout circuit
- Component simulations (.sp, .spice, .cir files):
  - Basic gates (and2, and3, and4, and5, or2, or3, or4, or5, xor)
  - DFF (dff.sp)
  - Inverter (inv.sp)
- `SCN6M_DEEP.09.tech27` - Technology file

### `/ngspice`
Contains pre-layout circuit simulations and analysis:

#### `/ngspice/Code`
- `cla_block.cir` - CLA block circuit definition
- `adder_final.cir` - Final adder circuit
- `D_flipflop.cir` - D flip-flop circuit
- `inverter.cir` - Inverter circuit
- `prop_gen.cir` - Propagate/Generate signal generator
- `SCN6M_DEEP.09.tech27` - TSMC 180nm technology file

#### `/ngspice/Plots`
- Simulation result plots and waveforms

## Technology Node

- **Technology**: TSMC 180nm (SCN6M_DEEP.09)
- **Tech Files**: `SCN6M_DEEP.09.tech27` and `TSMC_180nm.txt`

## CLA Design Overview

A Carry Lookahead Adder is a fast adder architecture that reduces propagation delay by computing carries in parallel:

- **Width**: 5-bit
- **Key Signals**:
  - `G` (Generate): Indicates carry generation
  - `P` (Propagate): Indicates carry propagation
  - `Cout` (Carry Out): Final carry output
  
## Getting Started

### RTL Simulation (Verilog)
```bash
cd VERILOG
# Run simulation (command depends on simulator: iverilog, xsim, vcs, etc.)
```

### Post-Layout Simulation (ngspice)
```bash
cd ngspice/Code
ngspice adder_final.cir
# Or for CLA specific block:
ngspice cla_block.cir
```

### Post-Layout Verification
```bash
cd POSTLAYOUTSIM
ngspice cla_final.cir
```

### Viewing Waveforms
```bash
cd VERILOG
gtkwave dump_cla_adder.vcd
```

## Key Files

| File | Purpose |
|------|---------|
| `VERILOG/cla.v` | RTL design of 5-bit CLA |
| `VERILOG/cla_tb.v` | Functional verification testbench |
| `MAGIC/cla_final.mag` | Physical layout of CLA |
| `MAGIC/cla_final.spice` | Extracted SPICE netlist from layout |
| `ngspice/Code/adder_final.cir` | Pre-layout circuit simulation |
| `POSTLAYOUTSIM/cla_final.spice` | Post-layout SPICE netlist |

## Design Flow

1. **RTL Design** → `VERILOG/cla.v`
2. **RTL Simulation** → `VERILOG/cla_tb.v`
3. **Physical Layout** → `MAGIC/cla_final.mag`
4. **Layout Extraction** → `MAGIC/cla_final.spice`
5. **Post-Layout Simulation** → `POSTLAYOUTSIM/cla_final.spice`
6. **Analysis** → Timing, power, and functionality verification

## Notes

- All component layouts (gates, flip-flops) are provided for hierarchical design
- Technology files support MAGIC layout editor and ngspice simulations
- VCD dump file enables GTKWave visualization for waveform analysis
- Post-layout results include parasitic effects from interconnects

---

**Course Project**: M-25 VLSI Design Course
