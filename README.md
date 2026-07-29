# Digital Logic Design – Verilog Sequential Circuits

This repository contains Verilog HDL implementations of fundamental sequential logic 
circuits: a D Flip-Flop, a JK Flip-Flop, a 4-bit Register, and a 4-bit Counter, along 
with their respective testbenches and simulation results.

## 🔧 Modules

### 1. D Flip-Flop (`d_flipflop.v`)
A single-bit edge-triggered flip-flop. On every rising clock edge, output `Q` takes 
the value of input `D`. Includes an asynchronous active-high reset.

### 2. JK Flip-Flop (`jk_flipflop.v`)
A flip-flop with two control inputs `J` and `K`, supporting four modes: hold, set, 
reset, and toggle. The toggle mode (J=K=1) is used as the basis for building counters.

### 3. 4-bit Register (`register4.v`)
Built from four D flip-flops connected in parallel, sharing a common clock and reset. 
Loads a 4-bit input `D[3:0]` into the register on each clock edge.

### 4. 4-bit Counter (`counter4.v`)
A synchronous up-counter built using JK flip-flops in toggle configuration. Counts 
from `0000` to `1111` and wraps back to `0000`, with an asynchronous reset.

## ▶️ Simulation

Each module was simulated using its corresponding testbench, and waveforms were 
generated and verified using **ModelSim**.

To run a simulation in ModelSim (example for the D flip-flop):
```tcl
vlib work
vlog d_flipflop.v testbench/d_flipflop_tb.v
vsim d_flipflop_tb
add wave -radix binary *
run -all
```

Repeat the same steps for `jk_flipflop.v`, `register4.v`, and `counter4.v` with their 
respective testbenches.

## 📄 Report

A detailed PDF report (`report.pdf`) is included, covering:
- Circuit design explanation for each module
- Simulation results with waveform screenshots
- Observations from the simulation

## ✅ Status

All modules have been designed, simulated, and verified to work as expected using ModelSim.
