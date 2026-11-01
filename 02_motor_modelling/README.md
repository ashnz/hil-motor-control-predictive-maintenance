# Stage 2 — Open-Loop DC Motor Modelling

**MATLAB R2026a | Simulink | Simscape Electrical**

## System Configuration

| Parameter            | Value                                  |
| -------------------- | -------------------------------------- |
| Motor                | XD-3420 brushed DC (preliminary model) |
| Supply voltage       | 12 V                                   |
| Armature resistance  | 3.9 Ω                                  |
| Armature inductance  | 12 µH                                  |
| Back-EMF constant    | 0.0033 V/rpm                           |
| Rotor inertia        | 1 × 10⁻⁵ kg·m²                         |
| Rotor damping        | 1 × 10⁻⁶ N·m·s/rad                     |
| External load torque | 0 N·m                                  |

*Motor parameters are estimated or assumed, not experimentally identified.*

## Simscape Model



## Simulation Results

| Metric                |          Result |
| --------------------- | --------------: |
| Steady-state speed    | **3622.14 RPM** |
| Rise time (10–90%)    |        0.0867 s |
| Settling time (2%)    |        0.1526 s |
| Overshoot             |           0.08% |
| Peak armature current |         3.075 A |

### Speed Response

<img width="961" height="607" alt="image" src="https://github.com/user-attachments/assets/c97df155-ced4-4a4c-a6cb-0cd50ecc61d9" />


### Armature Current

<img width="952" height="604" alt="image" src="https://github.com/user-attachments/assets/e557258f-aeda-4036-8da5-905865a560b9" />


## Observations

- Speed stabilised at approximately 3622 RPM under a constant 12 V input.
- Negligible overshoot (0.08%).
- Startup current peaked at 3.075 A and decreased as back-EMF developed.
- Simulation parameters require experimental identification before hardware validation.

## Files

- [`DC_Motor_Open_Loop.slx`](DC_Motor_Open_Loop.slx) — Simscape model
- [`analyse_open_loop_motor.m`](analyse_open_loop_motor.m) — Performance analysis and plot generation

**Next:** Closed-loop PID speed control.
