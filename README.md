# Vector Analyzer (EM078)
- **The project for the contest [InnovateFPGA](http://www.innovatefpga.com)**
- **[Project description on the site InnovateFPGA](http://www.innovatefpga.com/cgi-bin/innovate/teams.pl?Id=EM078)**

<p align="center"><img width="700" height="466" src="http://www.innovatefpga.com/attachment/member/2017/EM078-BCBCB04A69C2C3F4/image/project_700.png"></p>

## Description
Vector network analyzers (VNA) are widely used for parameter measurements of active and passive electronic devices and also some properties of materials. VNA is a device, which enable the RF performance, and some other devices to be characterized in terms of network scattering parameters, or S-parameters. Each S-parameter has an amplitude-frequency and phase-frequency characteristics, which are very useful for estimation of device quality. VNA is based on reflectometer: output signal and its reflection from other outputs should be splitted, then some signal processing operations and displaying the result for users. Signal processing is consist of different non-trivial mathematical operations: convolution, the Fourier transform, math operations in complex numbers etc. Another important problem is achievement well-tuning sync between source and sink. Such requirements push us to use SoC FPGA as an optimal platform for realization of handmade VNA.

## Video Presentation
<p align="center"><a href="https://youtu.be/BvW69keXv7Y" title="EM078 Vector Network Analyzer using SoC FPGA"><img src="https://preview.ibb.co/ne5cKH/Untitled_122.jpg" alt="EM078 Vector Network Analyzer using SoC FPGA"></a></p>

## 
The program for DE10-NANO consists of FPGA and HPS parts. FPGA part is responsible for interface with ADC and DAC chips, performing data preprocessing and the calculation of the amplitude and phase of the signal. HPS part sets the settings of VNA state machine (frequency, time-out, averaging), initiates every test cycle and prepares the obtained information for visualization on the monitor. The structure of the program shown in the figure:

<p align="center"><img width="700" height="466" src="http://www.innovatefpga.com/attachment/member/2017/EM078-BCBCB04A69C2C3F4/image/block2.jpg"></p>

