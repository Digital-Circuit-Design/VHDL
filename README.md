<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
</p>

---

<p align="center">
  <strong>Digital Circuit Design</strong>
</p>

<h1 align="center">
  Introduction to the simulation environment
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<hr>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  Supervisor: Ioannis Vogiatzis, Professor<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/ioannis-voyiatzis/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/ioannis-voyiatzis-7b5a6b88/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Panagiotis Karkazis, Associate Professor<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/panagiotis-karkazis/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/panos-karkazis-39ba1595/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Co-supervisor: Athanasios Milidonis, Postdoctoral Researcher<br>
</p>

<p align="center">
  <a href="https://scholar.google.com/citations?user=akjyDIYAAAAJ&hl=en" target="_blank">Scholar</a> ·
  <a href="https://gr.linkedin.com/in/athanasios-milidonis-a5a560167" target="_blank">LinkedIn</a>
</p>

</hr>

---

<p align="center">
  Athens, May 2023
</p>

---

<p align="center">
  <img src="https://avatars.githubusercontent.com/u/21169439?s=280&v=4" width="250"/>
</p>

---

# README

## Introduction to the simulation environment

The project focuses on implementing fundamental **digital logic components** using **VHDL** and verifying their functionality through simulation in the **ModelSim Altera Starter Edition** environment.  
Each circuit includes:

- A **Dataflow Architecture** implementation
- A dedicated **testbench** for functional verification

---

## Table of Contents

| Section | Folder / File                                         | Description                                               |
| ------: | ----------------------------------------------------- | --------------------------------------------------------- |
|       1 | `assign/`                                             | Laboratory assignment material                            |
|     1.1 | `assign/Lab3_UniWA-BSc-DSD_VHDL#1.pdf`                | Laboratory exercise description (English)                 |
|     1.2 | `assign/Εργαστήριο3_ΠΑΔΑ_Βασική-ΣΨΣ_VHDL.pdf`         | Laboratory exercise description (Greek)                   |
|       2 | `docs/`                                               | Simulation environment documentation                      |
|     2.1 | `docs/Introduction-to-the-simulation-environment.txt` | Introduction to the VHDL simulation environment (English) |
|     2.2 | `docs/Εισαγωγή-στο-περιβάλλον-προσομοίωσης.txt`       | Introduction to the VHDL simulation environment (Greek)   |
|       3 | `src/`                                                | VHDL source code and testbenches                          |
|     3.1 | `src/ha.vhd`                                          | Half Adder (VHDL implementation)                          |
|     3.2 | `src/ha_tb.vhd`                                       | Half Adder testbench                                      |
|     3.3 | `src/fa.vhd`                                          | Full Adder (VHDL implementation)                          |
|     3.4 | `src/fa_tb.vhd`                                       | Full Adder testbench                                      |
|     3.5 | `src/adder4.vhd`                                      | 4-bit Adder                                               |
|     3.6 | `src/adder4_tb.vhd`                                   | 4-bit Adder testbench                                     |
|     3.7 | `src/dec2to4.vhd`                                     | 2-to-4 Decoder                                            |
|     3.8 | `src/dec2to4_tb.vhd`                                  | 2-to-4 Decoder testbench                                  |
|     3.9 | `src/dec_4to16.vhd`                                   | 4-to-16 Decoder                                           |
|    3.10 | `src/dec_4to16_tb.vhd`                                | 4-to-16 Decoder testbench                                 |
|    3.11 | `src/mux1.vhd`                                        | 2-to-1 Multiplexer                                        |
|    3.12 | `src/mux_tb.vhd`                                      | 2-to-1 Multiplexer testbench                              |
|    3.13 | `src/mux_4to1.vhd`                                    | 4-to-1 Multiplexer                                        |
|    3.14 | `src/mux_4to1_tb.vhd`                                 | 4-to-1 Multiplexer testbench                              |
|    3.15 | `src/mux_double_2to1.vhd`                             | Double 2-to-1 Multiplexer                                 |
|    3.16 | `src/mux_double_2to1_tb.vhd`                          | Double 2-to-1 Multiplexer testbench                       |
|       4 | `README.md`                                           | Project documentation                                     |
|       5 | `INSTALL.md`                                          | Usage instructions                                        |

---

## 1. Circuits Included

### 1.1 Multiplexers

- **2-in-1 Multiplexer:** Basic bit-level selection between two inputs.
- **Triple 2-in-1 Multiplexer:** Handles two 3-bit inputs controlled by a single select signal.
- **4-in-1 Multiplexer:** Selects one of four inputs using a 2-bit control signal.

### 1.2 Decoders

- **2-in-4 Decoder:** Standard 2-to-4 line decoding logic.
- **2-in-4 Decoder with Enable:** Includes an enable (`en`) signal; when disabled, all outputs remain `0`.
- **4-in-16 Decoder:** Extended decoder for larger-scale decoding operations.

### 1.3 Arithmetic Circuits

- **Half Adder (Semi-Assimilator):** Performs basic addition of two single-bit inputs, producing Sum and Carry outputs.
- **Full Adder:** Adds two bits and a Carry-in (`Cin`) to produce Sum and Carry-out outputs.
- **4-Bit Adder:** A vector-based arithmetic unit that computes the sum of two 4-bit inputs, including overflow detection via Carry-out.

---

## 2. Simulation & Verification

All designs are verified using **ModelSim Altera Starter Edition**, ensuring correctness through waveform analysis and systematic testbench execution.
