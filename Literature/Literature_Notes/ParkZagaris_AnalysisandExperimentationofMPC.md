# Analysis and Experimentation of Model Predictive Control for Spacecraft Rendezvous and Proximity Operations with Multiple Obstacle Avoidance

Abstract
- Multiple obstacle avoidance maneuvers for spacecraft rendezvous and docking
- Uses rotating hyperplane method to convexify constraints for linear quadratic MPC
- Provides simulation and experimentals results

Introduction
- Need for collision-free, real-time RPO because of debris around the Earth
- Two different MPC approaches for RPO maneuvers with multiple obstacles
	- LQ-MPC method with dynamically reconfigurable linear constraints
		- Converts an inherently non-convex exclusion constraint with a convex constraint using a rotating hyperplane
		- Feasible for real-time implementation since LQ-MPC reduces to a quadratic programming problem which has effective solvers for it
		- Multiple obstacles
	- Nonlinear MPC method dealing with the inherently non-convex constraints imposed by the obstacles is developed and experimentally evaluated
- Nonlinear MPC
	- Literature shows constraints can be modelled with ellipsoids
	- NMPC can yield lower control effort (more efficient)
	- Not as feasible in real time
		- Loss of stability
		- Degraded performance
		- Violation of constraints
	- There are methods to speed up NMPC
		- Advanced step algorithm uses Newton-type interior point procedure to converge

Conclusion
- LQ-MPC and NMPC were used
	- Three types of constraints
		- Obstacle avoidance
		- Thrust magnitude
		- Entry cone constraints
- LQ-MPC
	- Non-convex constraints approximated as convex constraints
	- Used quadratic programming (QP) algorithm to solve
	- Used hyperplane method to linearlize constraints
	- Hyperplane methods
		- Dual hyperplane achieved performance improvement
		- Rotating hyperplane required tuning
- NMPC
	- Efficient solver used: Interior Point OPTimizer (IPOPT)
	- Good performance in non-realtime simulations
	- Some violations of constraints occured because of computational delays
- LQ-MPC and NPMC Comparison
	- Convex approximation of LQ-MPC constraints enabled more robust implementation without significant computational delay
	
- Both methods tested Naval Postgraduate School Floating Spacecraft Simulator Test Bed
	


## Conclusion 
"In this paper, we have considered spacecraft rendezvous and docking maneuvering with multiple obstacle
avoidance. LQ-MPC and NMPC were utilized to enforce the obstacle avoidance constraints, thrust magnitude
constraints, and the entry cone constraints. In the LQ-MPC framework, the non-convex obstacle
constraints was approximated to convex constraints, and the optimization problem was solved by a QP
algorithm. The dynamically reconfigurable linear constraints have been employed to accomplish this. The
rotating hyperplane method has been implemented as an approach of the constraint linearization. A new
method, double hyperplane method, using two hyperplane has been proposed to improve performance and
to reduce numbers of tunable parameters in the rotating hyperplane method. An NMPC controller dealing
with the nonlinear obstacle avoidance constraints directly using an efficient solver, IPOPT.
The developed MPC controllers have been analyzed and tested on the simulation model and the NPSFSSTB.
The dual hyperplane method achieved performance improvement and is applicable for a general
case whereas the rotating hyperplane method required to tune rotation rates of hyperplanes in simulations
and experiments. The NMPC controller with the same MPC parameter setting has accomplished good performance
in nonreal-time simulations and in experiments overall; however, non-converged solutions due to
computational delays made violation of the obstacle avoidance constraints in a test case. This demonstrated
that the well-defined convexication of the obstacle avoidance constraints enables more robust implementation
of the LQ-MPC without significant computational delays in real time. As a future work, the extensions
to three dimensional spacecraft of the dual hyperplane method and to docking with a rotating target will be
pursued in the NPS-FSSTB."