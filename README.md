# LQG-LQI Rocket Attitude Control System

## 1. Project Title
LQG-LQI Based Rocket Attitude Control System  
Designed and simulated in MATLAB/Simulink

---

## 2. Objective
To design an optimal control system capable of stabilizing and tracking 
the position and attitude of a rocket model under external disturbances 
using LQR, LQI, and Kalman Filter techniques.

---

## 3. System Model
The rocket is modeled as a 4-state dynamic system:

| State | Symbol | Description |
|-------|--------|-------------|
| Position | x | Linear position |
| Velocity | v | Linear velocity |
| Attitude angle | θ | Angular position / pitch |
| Pitch rate | q | Angular velocity |

State-space representation:  
ẋ = Ax + Bu  
y = Cx + Du

---

## 4. LQR / LQI Controller

### LQR (Linear Quadratic Regulator)
- Computes optimal state feedback gain matrix K
- Minimizes a cost function balancing state error and control effort
- Control law: u = -Kx * x̂

### Tuning Parameters
- Q matrix — penalizes state deviation (higher Q = faster correction)
- R matrix — penalizes control effort (higher R = smoother, less aggressive actuator response)
- Tuned iteratively to balance tracking performance and actuator aggressiveness

### LQI (Linear Quadratic Integrator)
- Integral action added to eliminate steady-state error
- Enables accurate reference tracking
- Augmented control law: u = -Kx * x̂ - Ki * ∫(error)

### Reference Commands
- Position: x_ref ≈ 20
- Attitude: θ_ref ≈ 10

---

## 5. Kalman Filter
- Estimates internal states from noisy sensor measurements
- Generates estimated state vector x̂
- Improves robustness and smoothness of control response
- Combined with LQR forms the LQG (Linear Quadratic Gaussian) controller

---

## 6. Disturbance Rejection
- Sinusoidal disturbance injected into the plant
- Controller tested for robustness and recovery
- System successfully stabilizes after disturbance

---

## 7. Results
- x tracks desired position reference
- θ tracks desired attitude reference
- q and v converge to zero
- Stable closed-loop response achieved


> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5da4b32c-6fb1-4096-9368-4c99f7678c2d" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6b432764-c3d7-4186-bf95-6d1bcc171bfe" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a2d4b64f-a0f7-4c6a-97fa-d8ca9bd72a1f" />



---

## 8. Future Improvements
- Extend to nonlinear rocket dynamics
- Implement Hardware-in-the-Loop (HIL) testing
- Test with higher-order multi-axis models
- Deploy on embedded hardware (STM32)

---

## Tools Used
- MATLAB
- Simulink

## Author
Vaishnav Suresh  
BTech — Applied Electronics and Instrumentation  
College of Engineering Trivandrum, Kerala
