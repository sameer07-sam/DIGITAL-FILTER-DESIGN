# DIGITAL-FILTER-DESIGN

COMPANY:CODTECH IT SOLUTIONS PVT.LTD

NAME:MD SAMEER AHMED

INTERN ID:CT06DH1484

DOMAIN NAME:VLSI

DURATION:6 WEEK

MENTOR:NEELA SANTOSH

**Digital Filter Design – Task Description**

As part of my internship at CODTECH IT SOLUTIONS PVT. LTD, I was assigned a task to design a Digital Filter in the VLSI domain using Verilog. The objective of this task was to implement a simple Finite Impulse Response (FIR) digital filter to process discrete-time signals effectively.

**Steps I Followed:**

**1. Understanding Requirements:**
I started by studying the basics of digital filters, especially FIR filters, which rely on a fixed set of coefficients and past input values to generate the current output. I understood the formula:
    y[n] = h0*x[n] + h1*x[n-1] + h2*x[n-2] + ... + hN*x[n-N]
where h are coefficients and x is the input signal.

**2. Writing Verilog Code:**
I wrote a Verilog module named fir_filter that processes a serial stream of 8-bit input data using predefined filter coefficients. The module used shift registers to store previous inputs and performed multiply-accumulate operations to compute the output.

**Implemented Features:**

Fixed number of taps (filter order)

8-bit input and output

Coefficients stored in a local array or hardcoded

Clocked sequential logic for pipelined filter behavior

**3. Testbench Development:**
I created a testbench module to simulate the FIR filter design. I applied various discrete-time input sequences and verified the output signal using expected filtered results.

**4. Simulation:**
I used tools like ModelSim to simulate the waveform of the digital filter output. I analyzed the output waveforms and verified that the FIR filter suppressed high-frequency components and preserved low-frequency components, as intended.

**5. Result Analysis:**
The simulation confirmed that the digital filter behaves correctly and effectively filters the input signal. I documented my observations and compared them with theoretical expectations for an FIR filter.
