# Extended Kalman Filter for Spacecraft Pose Estimation Using Dual Quaternions

Abstract
- Uses dual quaternions and Kalman filter to estimate pose
- First Kalman filter for pose estimation
- Three formulations presented
	- Continuous-time linear and angular velocity measurements with noise and bias, discrete time pose measurements with noise
	- Only discrete-time pose measurements with noise (suitable for proximity operations where chaser has only ranging data, but needs velocity data)
	- Continuous-time angular velocity and linear acceleration measurements with noise and bias and discrete-time pose measurements with noise
- Comparison made to two extended Kalman filter formulations using Monte Carlo simulations

	


Introduction
- Quaternion multiplicative extended kalman filter (Q-MEKF) used a lot in several NASA spacecraft
- Quaternions
	- Are non-singular and have a minimum number of parameters
	- Appear linearly in equations of motion (Euler angles appear as trig functions)
- Lack of succesful Kalman filtering before 1967 attributed to lack of good system dynamics model
- Propagating of 4x4 covariance matrix is not necessary (largest computational burden for Kalman filters)
	- Only 3x3 vector needs to be computed
	- Using only a 3x3 can lead to singularities, but unlikely since error between true and estimated attitude is close to zero (singularity if angle between attitudes is more than 180°)
- Reference to pose controllers with dual quaternions
	- More compact representation of the position and attitude
	- Combined rotational kinematic and dynamic equations of motion, when written in terms of dual quaternions, have the form of rotational-only equations of motion.
- Traditional approach is to have to separate estimators for position and attitude
- Contributions of this paper
	1. Error unit dual quaternion use in Q-MEKF
	2. Number of elements required for dual quaternion multiplicative Kalman filter (DQ-MEKF) is reduced from 8 to 6 using error unit dual quaternion, instead of the true unit dual quaternion
	3. Continuous-discrete Kalman filter allows for discrete measurements to be taken at irregular times. Different sensors can be used at different rates.
	4. Experimental validation and comparison to two alternative EKF methods

	

Conclusion
- Extends widely used Q-MEKF
- 6 states necessary instead of 8 when using error unit dual quaternion
- Three forms are presented (see intro)
- Experiments show no singularities, accuracy, precision, and fast enough for operational use
- Might be best formulation if measurements are expressed in a difference reference frame than the variable to be estimated
	- Example: when one needs inertial measurements expressed in body frame for a control law


## Conclusion 
"This paper proposes a DQ-MEKF for pose estimation that is an
extension of the well-known and widely usedQ-MEKFfor spacecraft
attitude estimation. By using the dual quaternion multiplication and
the concept of error unit dual quaternion, the two algebraic constraints
of unit dual quaternions are automatically satisfied during the
measurement update of the DQ-MEKF and the number of states is
reduced from eight to six. Three different forms of the DQ-MEKF are
presented, each with a different application in mind. Experimental
results show that the DQ-MEKF does not encounter singularities and
is accurate, precise, and fast enough for operational use. Moreover,
when compared with two other EKF formulations, experimental
results and Monte Carlo simulations suggest that the DQ-MEKF
might be the best formulation if the measurements are expressed in a
different reference frame than the variable to be estimated. This is the
case, for example, when one needs the inertial position of a satellite
expressed in the body frame (e.g., to implement a control law), but the
measurements are expressed in the inertial frame, like the inertial
position measurements produced by a GPS. Finally, it should be
mentioned that, whereas the derivations presented in this paper do not
rely on a model of the system dynamics, because they may be hard to
model accurately enough, it is relatively straightforward to do so, if
desired."