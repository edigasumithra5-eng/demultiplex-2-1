# 2-to-1 Demultiplexer using Verilog

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-green)
![Waveform](https://img.shields.io/badge/Waveform-GTKWave-orange)

## 📌 Overview

This project implements a 2-to-1 Demultiplexer (DEMUX) using Verilog HDL.

A demultiplexer is a combinational logic circuit that takes one input
signal and routes it to one of multiple output lines based on a select
signal.

A 2-to-1 DEMUX contains:

- 1 data input
- 1 select input
- 2 outputs

---

## 🎯 Objectives

The objectives of this project are:

1. Understand the working principle of a 2-to-1 demultiplexer.
2. Design a DEMUX using Verilog HDL.
3. Create a Verilog testbench.
4. Verify the design through simulation.
5. Analyze the simulation waveform using GTKWave.

---

## 🔧 Design Specification

### Inputs

- `din` - Data input
- `sel` - Select signal

### Outputs

- `y0` - Output 0
- `y1` - Output 1

---

## 📊 Truth Table

| Data Input | Select | Y0 | Y1 |
|------------|--------|----|----|
| 0          | 0      | 0  | 0  |
| 0          | 1      | 0  | 0  |
| 1          | 0      | 1  | 0  |
| 1          | 1      | 0  | 1  |

---

## 🧮 Boolean Expressions

The outputs of the DEMUX are:

Y0 = D · S'

Y1 = D · S

Where:

- D = Data input
- S = Select signal
- Y0 = Output 0
- Y1 = Output 1

---

## 📁 Project Structure

```text
2-to-1-Demultiplexer-Verilog/
│
├── README.md
│
├── src/
│   └── demux2to1.v
│
├── tb/
│   └── demux2to1_tb.v
│
├── sim/
│   └── waveform.vcd
│
└── screenshots/
    └── waveform.png