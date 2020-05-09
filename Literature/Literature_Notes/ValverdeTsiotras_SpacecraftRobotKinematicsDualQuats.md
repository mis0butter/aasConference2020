# Spacecraft Robot Kinematics Using Dual Quaternion
Authors: Valverde and Tsiotras

Abstract
- Dual quats convenient way to represent pose. They are used to tackle complex RPO control problems
- Objective: bridge gap between dual quat use in spacecraft control and fixed-base robotic manipulation
- Gives expressions of common robotics tools, but in dual quats
- Shows study of kinematics of serial manipulator configurations up to a free floating robotic system
- Provide expressions for dual velocities of different joints
- Also cast different convex constraints commonly encountered by space robots in terms of dual quaternions

Introduction 
- What draws people to use dual quaternions
  - Similarities between quaternion and dual-quaternions controllers and estimators
  - No artificial separation between translational motion and rotational motion when controlling
  - They have been used extensively for dynamic modelling of ground-based robotic manipulators
- This work removes the requirement for fixed base

Conclusion
- Succeeded in developing generalizable framework to capture kinematics of spacecraft mounted robotic manipulators.
- Developed body-frame Jacobian matrix with dual quaternions
  - In combination with screw matrix, it avoids separation of the contribution by the generalized speeds of a given joint
- Represented dual quaternion constraints



## Conclusion

"In this paper we have explored the use of dual quaternions for robot modeling. In particular, the main contribution of this paper is a generalizable framework to capture the kinematics of spacecraft-mounted robotic manipulators using a dual quaternion approach. We took a bare-bones approach that built up to a convenient description of the end-effector’s dual velocity, making use of a more intuitive forward kinematics methodology than the existing methods in the literature. Previousworksonrobotkinematicsusingdualquaternionsprovidedeitherstrictgeometry-dependent approaches or were only applicable to ﬁxed-base robots. The work presented herein is highly relevant in combination with the latest literature in dynamic modeling of robot manipulators using dual quaternions. Additionally, in our study of kinematics, we developed a convenient and simple-to-implement representation of the body-frame Jacobian matrix. The proposed form of the Jacobian exploits a convenient matrix representation of the adjoint dual quaternion transformation so that,incombinationwiththenewlyproposedformofthescrewmatrix,itavoidstheartiﬁcialseparation of the contribution by the generalized speeds of a given joint. Finally, we have provided a summary, and re-interpretation, of several existing results on the topic of dual quaternions, emphasizing their applicability on spacecraft-mounted robots. These included results on the exponential and logarithmic maps, an exposition on the use of the DH parameters, and ﬁnally the casting of the dual quaternion representation of constraints (originally developed for EDL purposes) interpreted in the context of a gripper-target system on-board a spacecraft. Future work in this area will aim at implementing kinematic control laws for end-effector pose control when the based is not ﬁxed to an inertial reference frame. This should be possible by following the steps in Özgür and Mezouar [20], and through the use of the Generalized Jacobian Matrix [28]."