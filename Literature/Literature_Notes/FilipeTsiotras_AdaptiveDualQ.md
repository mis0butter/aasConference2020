# Adaptive Position and Attitude-Tracking Controller for Satellite Proximity Operations Using Dual Quaternions
Authors: Filipe and Tsiotras

Abstract
- nonlinear adaptive pose tracking controller for rpo between target and chaser
- Requires no information about mass and inertia matrix of chaser
- Takes gravity, gravity gravity gradient torque, perturbing acceleration due to Earth oblateness, and constant disturbance torques.
- Shows almost global asymptotic stability of velocity and position tracking errors
- Dual quaternions are used to represent absolute and relative pose metrics

Introduction
- Almost globally is best one can achieve with a continous controller
- Dual quaternion provides insight and allows one to write controller in a more compact form
- Most efficient representation to perform basic pose transformations in terms of storage and number of operations.
- Automatically take into account natural coupling between rotational and translational motions
- Most useful property of dual quaternions is that the combined translational and rotational kinematics and dynamic eoms written in terms of dual quaternions have the same form as the rotational-only kinematic and dynamic equations of motion in terms of quaternions.
- Stability proven in one step with dual quats
- Dual quaternions inherit "unwinding phenomena" (look this up)
- Look up mass ID!!!

Conclusion
- Controller almost globally stable
- Controller can handle large errors, even in the presence of constant unknown disturbance torques
- Can be used to track time-varying relative position and attitude profiles with respect to tumbling target satellites in elliptical orbits or small asteroids
- Requires no mass or inertia properties of chaser
- Low order of controller makes it suitable for satellites with limited onboard computational power
- This paper demonstrates how attitude only quaternion controllers can be extended to be used for dual quaternions


## Conclusion

"Anadaptivetrackingcontrollerforsatelliteproximityoperationsis presented in this paper. The controller requires no information about the mass and inertia matrix of the chaser satellite and takes into account the gravitational acceleration, the perturbing acceleration due to Earth’s oblateness, and the gravity-gradient torque. The controller is shown to ensure almost global asymptotical stability of the linear and angular position and velocity tracking errors, even in the presenceofconstantunknowndisturbanceforcesandtorques.Hence,the controllercanhandlelargeerroranglesanddisplacements.Sufficient conditions for mass and inertia matrix identification are also given. Becausethiscontrollerisbasedontherelativenonlinearequationsof motion, it can be used to asymptotically track time-varying relative position and attitude profiles with respect to, for example, tumbling target satellites in elliptical orbits or small asteroids. Moreover, because the controller requires no information about the mass and inertia matrix of the chaser satellite, it can be used when little or no information about the mass and/or inertia matrix of the chaser satellite is available. The relatively low order of the controller makes it suitable for satellites with limited onboard computational resources. One of the key contributions of this paper is that it demonstrates how dual quaternions can be used to extend existing attitudeonly controllers based on quaternions having certain desirable properties (e.g., stability, adaptivity, boundedness) to position and attitude controllers having similar properties."