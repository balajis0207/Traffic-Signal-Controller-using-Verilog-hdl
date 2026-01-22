🚦 Traffic Signal Controller using Verilog HDL (FSM Based)

This project implements a traffic signal controller for a highway–country road intersection using Verilog HDL and a Finite State Machine (FSM) approach.
The controller gives priority to the main highway and allows the country road traffic only when vehicles are detected using a sensor input.

📌 Project Overview

Main highway has highest priority (default GREEN)

Country road gets GREEN only when a car is detected

Safe signal transitions using YELLOW and ALL-RED states

FSM-based design with 5 states (S0–S4)

Fully verified using testbench and waveform simulation

This project demonstrates how real-world traffic systems can be modeled using digital design principles.

🔧 Features

✅ Priority-based traffic control

✅ Sensor-based vehicle detection

✅ FSM with 5 states

✅ Safe transitions (Yellow & All-Red)

✅ Parameterized signal encoding

✅ Synthesizable RTL design

✅ Simulation verified in Vivado

🧠 FSM States Description
State	Highway	Country Road	Description
S0	GREEN	RED	Default state (highway priority)
S1	YELLOW	RED	Highway preparing to stop
S2	RED	RED	Safety delay
S3	RED	GREEN	Country road allowed
S4	RED	YELLOW	Country road preparing to stop
🔁 FSM Transition Flow
S0 --(X=1)--> S1 → S2 → S3 --(X=0)--> S4 → S0


Where:

X = 1 → Car detected on country road

X = 0 → No car on country road

📁 Project Structure
traffic-signal-controller/
│
├── traffic_controller.v   # Main FSM-based controller
├── traffic_tb.v           # Testbench for simulation
├── README.md              # Project documentation
└── waveforms/             # Simulation screenshots (optional)

🛠 Tools Used

Verilog HDL

Vivado Simulator

FSM Design Methodology

RTL Coding

Digital Logic Design

▶️ How to Run Simulation (Vivado)

Create a new RTL project in Vivado

Add traffic_controller.v as Design Source

Add traffic_tb.v as Simulation Source

Run Behavioral Simulation

Observe waveform of HWY and CNTRY signals

📊 Simulation Output

The waveform verifies:

Highway signal stays GREEN by default

Country road gets GREEN only when sensor detects car

Safe transitions using YELLOW and ALL-RED states

No conflict (both signals never GREEN at same time)

🎯 Learning Outcomes

Practical understanding of FSM-based controllers

RTL coding best practices in Verilog

Writing effective testbenches

Waveform analysis and debugging

Real-world digital system modeling

🚀 Future Improvements

Add pedestrian signal support

Add timer-based dynamic delays

Convert to 4-way intersection controller

Implement on FPGA board

Add UART/LCD display for signal status

👨‍💻 Author

S. Balaji
Electronics / VLSI Enthusiast
📌 Interested in Digital Design, RTL, and Chip Design

⭐ If you like this project

Give it a ⭐ and share your feedback!
