# Model Predictive Control approach for guidance of spacecraft rendezvous and proximity maneuvering

Abstract
- MPC used for RPO maneuvering problems in orbit plane
- Constraints considered:
  - Thrust magnitude
  - Spacecraft positioning within line-of-sight cone while approaching the docking port on a target platform
  - Approach velocity to match velocity of docking port
- Two platform cases:
  - nonrotating
    - Explicit offline solution to MPC problem
    - Can be implemented online with on-board optimizer (how?)
  - rotating (tumbling)
    - Preditiction of platform rotation is necessary to accomplish maneuvers and reduce fuel consumption
- Applied technique to debris avoidance maneuvers
- Objective of paper: show that MPC can be effective feedback control approach to satisfying maneuver requirements, reducing fuel consumption, and provide robustness to disturbances.


Introduction
- Autonomous RPO are really important on modern missions like approach and docking ISS, capture and recovery of a tumbling out-of-control satellite, and a fly-by or avoidance of a space object
- Traditional approaches to this has been open loop, delta-v sequencing
- Computing on spacecraft can vary from computers less sophisticated than a car's to your personal computer
  - The lower the computation the better. Extra computation can be used for other essential tasks
- To minimize computational effor, LQ MPC with constant horizon, real-valued optimization variables, and dynamically reconfigurable linear constraints.
  - When dealing with a rotating platform, one can solve offline by using parametric quadratc programming techniques and create "piecewise affine feedback law" for online implementation
- This paper overcomes limitation of standard MPC approach (plant and prediction model no longer time invariant). Final implementation not fully adaptive (see Generalized Predictive Control) but it uses something in between. It utilizes dynamically reconfigurable constraints that can be changed based on external conditions.

Conclusion
- Solved RPO maneuvering between spacecraft and tumbling target platform.
- Enforced velocity of approach, LOS cone, and thrust magnitude constraints.
- Problem was solved without using integer variables so it could be solved with LQ MPC QP algorithms (efficient and computationally affordable)
- Through simulation, paper showed that they were able to plan efficient maneuvers while keeping all constraints, compensating for effects of significant disturbances (thrust errors, air drag, solar pressure)
- Analyzed effect of weights on fuel consumption and time-to-dock
- Nonrotating platform solutions can be implemented without online QP solver.
- When rotating, need prediction of docking port motion
	


## Conclusion 
"In this paper, we have considered rendezvous and proximity maneuvering between a spacecraft and (a potentially rotating/tumbling) target platform. MPC was utilized to enforce velocity of approach (soft-docking),LOScone,andthrustmagnitudeconstraints.TheproblemwastreatedinanLQMPC framework without introducing integer variables so that the ﬁnite horizon optimization problem can be solved by QP algorithms, which are known to be efﬁcient and computationally affordable. To achieve this, we have employed dynamically reconﬁgurable linear constraints. We have demonstrated through simulations that the MPC controller is capable of planning efﬁcient maneuvers, while enforcing all the imposed constraints, and of compensating for the effects of signiﬁcant disturbances such as those that may be caused by thrust errors, air drag, or solar pressure. In addition, we have analyzed the dependence of fuel consumption and ‘time-to-dock’ on the weights of the MPC cost function by using three different metrics. The weights of the MPC cost function, for example, the scaling factor on the control weighting matrix, have been shown to have a direct inﬂuence over the trade-off between the fuel consumption and the docking time. For the case when the platform is not rotating and the LOS cone angle is ﬁxed and known, an explicit MPC solution can be generated ofﬂine for on-board use, hence, avoiding the need for the deployment and validation of the QP solver in the spacecraft software. For the case when the target platform is rotating, our results suggest that predicting the motion of the docking port and of the associated changes in the LOS constraint permits to perform maneuvers initiated when the spacecraft is further away from the platform and when the platform is rotating/tumbling at a higher rate. We have also shown that by incorporatingsuchapredictionintotheMPCproblemformulation,thefuelconsumptionisreduced. Finally, we have demonstrated that related ideas can be applied for debris avoidance during the rendezvous maneuver. The extensions to more general in and out-of-plane spacecraft motion and to three dimensional spacecraft and platform rotations will be pursued in future works."