# Constrained Autonomous Precision Landing via Dual Quaternions and Model Predictive Control
Authors: Unsik Lee and Mehran Mesbahi

Abstract
- Fuel optimal while keeping geometric line of sight to target
- Difficult because geometric constraints are coupled with translational and rotational motions of lander spacecraft
- Dual quaternion gives a unified framework, but it has a quadratic cost on the required control commands to minimize propellant consumption
- Novel feature: convex representable subsets in configuration space in terms of unit dual quaternions
- Stability and reachability analysis presented

Introduction 
- Dual quaternions effective for motion planning in rotationally and translationally constrained configuration space
- Can address nonconvex constraints as convex constraints with dual quats (how?) 
- Uses PWA-MPC (Piecewise-affice-MPC) to approximate nonlinear rotational and translational rigid body dynamics in a uniform gravity field
- Rotational and translational constraints are defined as unit dual quats (while admitting to a quadratic cost on required control commands to minimize propellant consumption)

Conclusion
- Used unit dual quats to parameterize rotational and translational motion of a rigid spacecraft while performing a powered descent guidance, with four translational and rotational constraints
- Used PWA-MPC formulation to develop guidance for descent

## Conclusion
"In this paper, we utilized unit dual quaternions that parameterize rotational and translational motion of a rigid spacecraft to develop an efﬁcient algorithm for powered descent guidance in the presence of four translational and rotational constraints. Subsequently, we derived a piece-wise afﬁne model for the rotational and translational control synthesis based on model predictive control. The resulting PWA-MPC approach was shown to provide a unifying framework through which various classes of constraints can addressed for powered descent guidance,inadditiontoawidearrayofproblemsforautonomousspacecraft operations."
