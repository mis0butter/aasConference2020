# Optimal Guidance and Thruster Control in Orbital Approach and Rendezvous for Docking using Model Predictive Control
Notes



- one rendezvous orbit transfer sequence 
  - Space Shuttle orbit-raising maneuvers on approach to ISS 
  - from MC4 (mid-course point 4) to MC5 directly beneath ISS 
- optimal attitude pointing requirements 
  - shuttle must orient so that its Trajectory Control Sensor (TCS) can maintain *line of sight* to ISS docking port 
  - known mass properties and space dispersions 
- MPC defines and solves optimal transfer guidance problem 
  - separate translational and associated attitude trajectory design phases 
    - operate sequentially, replan at each guidance update period 
  - series of consrained optimal control problems at various candidate attitudes and torques 
  - robust regression analysis of optimal trajectory solution 
- linear programming solver selects and optimally schedules vehicle jets 
  - deliver desired body force and torque commands 
  - range-dependent plume impingement constraints (closer than 1000 ft) 
  
## Conclusion: 
  
"In this paper, we presented our onboard receding horizon optimal control-based approach 
to the problem of constrained, fuel-optimizing, low-dispersion rendezvous guidance and control for a highly redundant 
reaction-jet based vehicle such as the space shuttle operating in close proximity of a target vehicle such as the
Space Station. We defined an approach for computing the force, trajectory, attitude and control sequence in
an optimal fashion to transfer between two key MidCourse points in the rendezvous stages - MC4 to MC5.
The transfer is complicated by the fact that attitudes must be commanded not only to optimize the trajectory
control but also to meet relative pointing constraints. The approach consists of: 

(a) a Finite-Horizon optimal
control step for synthesizing a finite number of impulsive force applications within an approach time-window
to produce a candidate trajectory, 

(b) identifying suitable attitudes and torques along that trajectory that
can optimally meet shuttle pointing constraints with a good orientation for realizing the desired translational
forces, and then 

(c) solving for the optimal jet selection logic using the full array of admissible jets depending
on the guidance mode at the time. "
