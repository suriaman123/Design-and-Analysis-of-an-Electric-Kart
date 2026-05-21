
# Design and Analysis of an Electric Kart
### Masters Coursework — Automotive Electronic Systems

This repository contains the full report, MATLAB scripts, and SIMULINK models developed for the **Design and Analysis of an Electric Kart** coursework, submitted as part of the Automotive Electronic Systems module.


##  Report Structure

The report is divided into six sections:
| Parameter | Symbol | Value | Unit |
|---|---|---|---|
| 1 | Introduction to Electric Vehicles
| 2 | Fundamentals of Electric Vehicles 
| 3 | Modelling and Simulation of a DC Motor 
| 4 | Modelling and Simulation of an Electric Kart 
| 5 | Simulation of Wheel and Suspension System 
| 6 | Conclusion 

---


##  Kart Parameters

The following parameters are defined in `kartdata.m`:

| Parameter | Symbol | Value | Unit |
|---|---|---|---|
| Wheel rolling radius | Rr | 0.1 | m |
| Gear ratio | Gr | 2 | — |
| Kart mass | Mass | 200 | kg |
| Gravitational acceleration | g | 9.81 | m/s² |
| Rolling resistance coefficient | RRc | 0.02 | — |
| Cross-sectional area | A | 0.5 | m² |
| Air density | ρ | 1.202 | kg/m³ |
| Drag coefficient | Cd | 0.6 | — |

---

##  Motor Parameters (Mars Etec 48 V)

| Parameter | Symbol | Value | Unit |
|---|---|---|---|
| Armature resistance | Ra | 0.053 | Ω |
| Armature inductance | La | 0.01 | H |
| Torque constant | Kt | 0.12 | Nm/A |
| Back-EMF constant | Kv | 0.127 | V·s/rad |
| Rated voltage | Va | 48 | V |

---

##  Track Parameters

- **Total lap distance:** 785 m  
- **Straight length:** 100 m × 2  
- **Bend radius:** 25 m (180° bends)  
- **Maximum cornering speed:** 14.14 m/s (at 8 m/s² lateral acceleration)  
- **Maximum braking rate:** 5 m/s²

---

## How to Run

### DC Motor Simulation
1. Open `dc_motor.mdl` 
2. Run the simulation
3. Observe the rotational speed response in the scope (should settle at ~13.1 rad/s)

### Electric Kart Lap Simulation
1. Run `kartdata.m` first to load all parameters into the workspace
2. Ensure `xt.mat` is loaded for the target speed profile
3. Open `kart.mdl` and run the simulation
4. Run `kartplot.m` to generate all 8 result plots

### Suspension System Simulation
1. Open `suspension.slx`
2. Run the simulation with a step input
3. Observe the sprung mass velocity response (vS) in Scope1

---

##  Key Results

### DC Motor
- Closed-loop transfer function: **Ω(s)/Va(s) = 0.12 / (0.02s² + 0.186s + 0.43924)**
- Steady-state speed at 48 V: **~13.1 rad/s (~125 rpm)**
- System response: **overdamped, no overshoot, settles in ~2–3 seconds**

### Electric Kart
- Baseline peak straight speed: **~17–18 m/s**
- Reducing mass to 150 kg: **higher acceleration (+~1 m/s² peak), higher top speed, lower energy use**
- Increasing wheel radius to 0.125 m: **higher top speed but lower acceleration and ~40% more energy consumed**

### Suspension System
- System type: **underdamped second-order**
- Peak sprung mass velocity: **~0.82 m/s**
- Settling time: **~4–5 seconds**

---

## Requirements

- MATLAB R2020a or later
- Simulink

---

## Extra

Submitted as part of the MSc Automotive Electronic Systems coursework.  
Special thanks to **Prof. Yingping Huang** for guidance and support throughout this module.

---

## License

This repository is submitted for academic purposes only.
```
