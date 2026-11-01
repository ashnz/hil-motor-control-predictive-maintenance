# Milestone 1 — STM32 Embedded Deployment

## Objective

Establish a functional model-based development workflow for the STM32 NUCLEO-F446RE using MATLAB, Simulink and STM32CubeMX.

This milestone establishes the embedded development environment required for the subsequent DC motor speed-control implementation.

## Hardware and Software

| Component | Specification |
|---|---|
| Development board | STM32 NUCLEO-F446RE |
| Microcontroller | STM32F446RE |
| MATLAB | R2026a Update 4 |
| Development environment | Simulink |
| Embedded support | STM32 Microcontroller Blockset |
| Code generation | Embedded Coder / Simulink Coder |
| Microcontroller configuration | STM32CubeMX |
| Programming interface | ST-LINK |
| Verification output | Onboard LED LD2 (PA5) |

## Implementation

A Simulink-based LED control application was configured and deployed to the STM32 NUCLEO-F446RE.

The STM32CubeMX project was configured for the target microcontroller and linked to the Simulink build environment.

The initial example project referenced an STM32F429 device. The target configuration was corrected to match the STM32F446RE hardware.

Following configuration and deployment troubleshooting, the generated application executed successfully on the physical development board.

## Verification Results

**Status: Passed**

The onboard LED blinked successfully after deployment from Simulink.

This verified the initial model-based code-generation, compilation, programming and execution workflow.

## Evidence

- Working Simulink model (`.slx`)
- STM32CubeMX configuration (`.ioc`)
- Photograph of the connected development board
- Short demonstration video showing LED operation

## Next Milestone

Develop an open-loop model of a brushed DC motor using Simscape Electrical, including electrical and mechanical dynamics. The model will form the basis for subsequent PID speed-controller development and hardware validation.
