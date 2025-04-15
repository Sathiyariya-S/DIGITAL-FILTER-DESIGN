# DIGITAL-FILTER-DESIGN-VLSI
# Sathiyariya S
Intern ID:CT04WH113
Internship will span 4 weeks from March 12th, 2025 to April 12th, 2025
Mentor name : Neela Santhosh Kumar (Human Resources & Academic Head, CODTECH IT SOLUTIONS PRIVATE LIMITED)

### **Design and Simulation of a Digital FIR (Finite Impulse Response) Filter Using Verilog**

### **Introduction:**

A Finite Impulse Response (FIR) filter is a type of digital filter widely used in signal processing applications due to its stability and linear phase characteristics. Unlike Infinite Impulse Response (IIR) filters, FIR filters depend only on the present and past input values and not on previous outputs, making them inherently stable. This project focuses on designing a 4-tap low-pass FIR filter using Verilog Hardware Description Language (HDL), simulating its functionality, and analyzing its performance.

### **Design Methodology:**
The basic principle of a FIR filter is to compute a weighted sum of the current and a finite number of previous input samples. The mathematical expression of a FIR filter output is:

\[
y[n] = h_0x[n] + h_1x[n-1] + h_2x[n-2] + h_3x[n-3]
\]

Here, \( x[n] \) is the input signal, \( h_0, h_1, h_2, h_3 \) are the filter coefficients (also known as taps), and \( y[n] \) is the filtered output. These coefficients define the characteristics of the filter such as cutoff frequency and passband shape.

In this project, we use a 4-tap FIR filter with predefined coefficients `{1, 2, 2, 1}` to form a simple low-pass filter. The filter captures recent input samples using a shift register, multiplies each with a corresponding coefficient, and then sums the results to produce the output.

### **Verilog Implementation:**

The FIR filter is implemented in Verilog with the following components:
- **Input:** 8-bit signed data (`x_in`)
- **Output:** 16-bit signed result (`y_out`) to accommodate the sum of multiplied values
- **Shift Register:** Stores the last four input values
- **Multiplier and Adder Logic:** Performs multiply-accumulate operations on input values and coefficients

### **Simulation and Verification:**

To verify the design, a Verilog testbench simulates a sequence of input values. The testbench applies new inputs at regular time intervals while observing the output response. The simulation output confirms that the filter correctly implements the desired FIR behavior. As each input is received, the output reflects the sum of the current and past weighted inputs.

Waveform analysis using tools like ModelSim or GTKWave demonstrates the delay and processing of each input, showcasing how the filter gradually builds up to full operation over the initial clock cycles (pipeline warm-up phase).

### **Performance Analysis:**

- **Stability:** Guaranteed due to the non-recursive nature of FIR filters
- **Latency:** Equal to the number of taps (4 clock cycles)
- **Linear Phase:** Achieved using symmetric coefficients
- **Scalability:** The design can be extended to support more taps or different coefficient sets

### **Conclusion:**

This project successfully demonstrates the design and simulation of a digital FIR filter using Verilog. The implementation showcases how digital signal processing concepts can be translated into hardware design. It also highlights the relevance of FIR filters in real-time applications and builds a foundation for more complex filter architectures in the future.
