# PERFORMANCE EVALUATION OF RENDEZVOUS USING MODEL PREDICTIVE CONTROL

Abstract
- New form of MPC
	- Robust to unknown but bounded disturbance
	- Finite time maneuver completion for an arbitrary target region
- Compared to traditional glideslope approach for spacecraft rendezvous
- Can explicitly minimize fuel cost for general target point
- Lower fuel expended than traditional glideslope approach
	


Introduction
- This new MPC has two new key features
	- Handle general target region (doesn't need to be enclosing equillibrium)
	- Robustness modifications that allow maneuver completion in finite time in presence of unknown, but bounded disturbance
- Uses less fuel than glideslope approach
- MPC
	- Emerging technology
	- Repeated solution of optimal control problem
	- Combines feedforward and feedback control
		- Initial portion of resulting control sequence is implemented
		- Then problem is solved again from the new state
	- Explicit awareness of constraints
		- Allows operation closer to boundaries of constraints and achieve better performance (than traditional schemes)
	- More computationally expensive
	- Adopted in industrial control (slower system dynamics)
	- Made more possible with faster computers
- MPC methods
	- Existing methods require target must be near unforced equillibrium or that the cost function penalizes the difference between the control inputs and the equillibrium forcing required to remain at the target
	- MILP (what is this?) used to effect a variable horizon length, leading to guaranteed finite-time completion
		- MILP used for collision avoidance, plume impingement avoidance, and other non-convex constraints
- Robust completion
	- Assuming bounded disturbance, optimization can be modified such that the optimal cost of each new plan is less than that of the previous plan by at least some known, non-zero amount
- Glideslope approach
	- Proven heritage
	- Continuous line of sight
	- Light online computational requirements
	- Fuel penalties because straight line approach requires actuation against the force of gravity
- Shown in paper
	- Two test cases (in track and radial approach)
	- Glideslope vs two MPC methods (one new MPC method), no disturbance
	- Glideslope vs two MPC methods (one new MPC method), with disturbance

Conclusion
- New MPC method using Mixed-Integer Linear Programming to effect a variable planning horizon has shown fuel savings over previous MPC methods and glideslope approach
- New MPC method can handle general target constraints (not near an equillibrium)
- New MPC method also offers robust finite-time completion
- MPC maintains performance advantage over glideslope method when uncertainty is included

## Conclusion 
"The new Model Predictive Control formulation, using Mixed-Integer Linear Programming to eﬀect a variable planning horizon, has been shown to oﬀer fuel savings in the performance of rendezvous between spacecraft. Simulations were performed to investigate performance in both radial and in-track approaches to the target, comparing with both the currently-favored glideslope algorithm and an earlier MPC formulation. MPC is an improvement over the glideslope algorithm because it includes an online minimum-fuel trajectory optimization, allowing it to ﬁnd the best approach path within constraints of sensor visibility and safety. The advantage of the new MPC formulation over earlier MPC schemes is its ability to handle general target constraints and cost functions. The new method also guarantees robust ﬁnite-time completion. 
Simulations including unmodeled disturbances have shown that the MPC optimization is always feasible and that the predicted bound on the rate of cost decrease is valid. These simulations also showed that MPC maintains its performance advantage over the glideslope method when uncertainty is included."