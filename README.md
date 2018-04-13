# Vector Analyzer (EM078)
- **Проект для конкурса [InnovateFPGA](http://www.innovatefpga.com)**
- **[Описание проекта на сайте InnovateFPGA](http://www.innovatefpga.com/cgi-bin/innovate/teams.pl?Id=EM078)**


## Description
Vector network analyzers (VNA) are widely used for parameter measurements of active and passive electronic devices and also some properties of materials. VNA is a device, which enable the RF performance, and some other devices to be characterized in terms of network scattering parameters, or S-parameters. Each S-parameter has an amplitude-frequency and phase-frequency characteristics, which are very useful for estimation of device quality. VNA is based on reflectometer: output signal and its reflection from other outputs should be splitted, then some signal processing operations and displaying the result for users. Signal processing is consist of different non-trivial mathematical operations: convolution, the Fourier transform, math operations in complex numbers etc. Another important problem is achievement well-tuning sync between source and sink. Such requirements push us to use SoC FPGA as an optimal platform for realization of handmade VNA.

## Project Proposal

### High-level Project Description
The scattering parameters, or S-parameters, are very powerful approach to analyze the performance of a test fixture and its individual components. S-parameters work by creating a black-box model that relates the voltage waves incident at each port of the model with the voltage waves that exit from the same ports. S-parameters is a way to accurate description of how high-frequency energy goes through n-ports test fixture. For a two-port system, like a single-ended transmission line, the S-parameters are described by the following equation:
![](http://www.innovatefpga.com/attachment/member/2017/EM078-BCBCB04A69C2C3F4/image/formula1.jpg)
where 
- V1+ and V2+  - the waves traveling into the two-port network at ports 1 and 2,
- V1- and V2-  - the waves traveling out of the two-port network at ports 1 and 2.

Note that the S-parameters matrix is defined at multiple frequency values, since in most applications there is a frequency band of interest and not a single value. That is the reason for the term (f) in the matrix.

![](http://www.innovatefpga.com/attachment/member/2017/EM078-BCBCB04A69C2C3F4/image/s-parameters_scheme_Fil2.png)

The S-parameter equation is analyzed in more detail in the flow diagram in Figure F.1. The diagram represents the four different signal paths that a twoport system has and the corresponding Sij terminology used to describe them. The “i” term is the network port being measured and the “j” term is where the input signal is located. The S21 insertion gain for a two-port network is the signal measured at port 2 when a voltage wave is input at port 1 and is also known as insertion loss for a passive system. The S11 term is the return loss at port 1, which corresponds to the signal reflected at port 1 when a voltage wave is input at port 1. The S-parameter measurement captures both phase and magnitude of the voltage waves to provide a complete electrical description of this two-port black-box network.

By different math operations, we can obtain different parameters of test device, such as VSWR,  input and output port's voltage reflection coefficients,  reverse and forward voltage gains etc.

This device is directed for specific tasks to analyze electronic devices; however, with some short changes and improvements in hardware and software parts the device can be upgrated to become a reflectometer or an oscilloscope. In this project we going to take it into account and create the whole project flexible design.

Target users:
Such devices are widely used by electronic engineers for testing their systems. The modern new systems, which are produced by such giants as LeCroy, Rhode&Schwartz, Keysight etc. might be too expensive for small manufactures. The target of our project is to create multipurpose easy-to-use device, which can be available for every enthusiast, who want to analyze his hardware. By adding our project on Github, we can expand the opportunities and create very useful tool together with world-wide community!

### Block Diagram

![](http://www.innovatefpga.com/attachment/member/2017/EM078-BCBCB04A69C2C3F4/image/s-parameters_scheme_all_Fil2.png)
DE10-Nano is a part of device, which targets are:
- Control of measurements by switches and buttons or other peripheral controllers, connected to DE10-Nano;
- Generating test signals (sinus, step function, meander, noise etc.);
- Receiving reflected and passed signals;
- Signal processing;
- Video-output for data view.

The Custom board 2 can be connected to the DE10-Nano 3 board through the shield connectors, additional LTC board with ADC and DAC (such as LTC2366 and DC2459A-A or DC2459A-C) or simply to any pins. It consist of custom circulators which allows us to work with each port of testing device 1 correctly. All calculated data can be viewed on display 4.

### Intel FPGA Virtues in Your Project
- FPGA is best platform to solve problems of synchronization between sources and sinks. It is very important when we going to detect the phase difference , for example, between source and reflected signal;
- Working with many s-parameters, we would like to get same values from them: gain, reflection coefficient etc. All these math operations are complicated and asks specific operations (i.e. working with complex numbers), so FPGA is very useful to calculate all values, which can be taken from each s-parameter. Moreover, since the math is the same, we can calculate everything simultaneously;
- FPGA’s pins can be used to implement ADC and DAC with good parameters. This feature gives ability not to use thirdparty chips; it also allow us to create as many* ADC and DAC as many free pins we have in our project. Best advantage of this virtue is that all of realized ADC/DAC would work in parallel, so the problem of synchronization would be solvable.