# Dual Quaternions as a Tool for Modeling, Control, and Estimation for Spacecraft Robotic Servicing Missions - Notes 
Authors: Panagiotis Tsiotras and Alfredo Valverde

Abstract
- control spacecraft proximity operations robotic in-orbit servicing 
- "artificial separation of translational and rotational motion" 
- theory of 6DOF motion of spacecraft using dual quaternions 
- revisits theory behind dual quaternions and associated Clifford algebras 
- pose = attitude and position 
- derive spacecraft pose controllers and pose estimation filters 
- mathematical structure --> adaptive estimation scheme: concurrent learning, allows estimation of on-the-fly mass properties of the spacecraft 

Introduction 
- nice history of satellite in-orbit servicing 
- mentions DARPA, RSGS, and Restore-L 
- control design for combined coupled otion of satellite-mounted robotic manipulators in-orbit 
- dual quaternions used extensively in (ground) robotics community 
- **several contributions in the dual quaternion literature mention Brodsky and Shoham** <-- maybe look up their papers 
- intro to use of dual number theory in modeling of dynamical systems 
- wow really good references up in this paper 
- "The goal of this paper is two-fold. First, for the uninitiated reader, we provide an overview of **quaternions and dual
quaternions** and show their links with each other and with the underlying mathematical framework they are part of,
namely, **Clifford Algebras**. This is followed by an overview of recent work that exploits the structural similarities
between quaternions and dual quaternions for **3-DOF and 6-DOF motion**, respectively. The second objective is to
introduce a new **6-DOF adaptive pose tracking controller** in terms of dual quaternions that makes use of **concurrent
learning**, a relatively new technique to augment adaptive controllers with on-line model learning ideas. We show that
concurrent learning aids in the **convergence of the estimation of the mass and inertia properties** of the system beyond
what traditional persistency of excitation can achieve. We conclude with a **numerical comparison of the proposed
controller with a controller that does not make use of concurrent learning to demonstrate the benefits of the proposed
approach.**" 

## Conclusion

In this paper we have provided a brief introduction to Clifford Algebras and their relationship to the well-known
quaternion and dual quaternion algebras, which are used extensively in spacecraft control problems. This was followed
by an extensive list of control and estimation algorithms that arose in the context of quaternion algebra for attitude
control and estimation, but which posses natural counterparts in dual quaternion algebra for pose control and estimation.
The formulations exploit the passive nature of mechanical systems and the many parallelisms between the quaternion
and the dual quaternion algebras – including the representation of kinematics and dynamics for 3-DOF and 6-DOF
motion, respectively.

Additionally, we presented a new adaptive pose-tracking controller in terms of dual quaternions. Continuous time concurrent learning was incorporated to yield stronger assurances on the convergence of the mass and inertia
properties of the spacecraft than a controller that relies solely on a persistently exciting reference motion. The
relationship between the rank condition that arises in concurrent learning and the integral relationship that ensures
parameter convergence in the context of persistency of excitation was studied in greater detail. It was shown that
the concurrent learning rank condition is a contributing factor to ensure persistency of excitation, but that the rank
condition (concurrent learning) and the integral condition (persistency of excitation) are not dissociated. As far as the
authors are aware, this is the first time a continuous formulation of concurrent learning is proposed, which allowed for
the relationship between persistency of excitation and the CL rank condition to be elucidated. Finally, the proposed
adaptive controller was evaluated against a baseline controller that does not include the concurrent learning term,
confirming the parameter estimation results in simulation.

Current and future work in dual quaternions will aim at modeling spacecraft-mounted robotic manipulators using
a Newton-Euler approach, with the purpose of providing a unified algebraic framework to perform a wide range of
spacecraft GNC functions during in-orbit robotic servicing.
