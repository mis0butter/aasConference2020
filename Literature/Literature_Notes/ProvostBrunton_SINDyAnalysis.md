# SINDy analysis of disturbance and plant model superposition on a rolling delta wing

Abstract
- Examines the validity of the principle of superposition, which assumes linearity
- Goman-Khrabrov model used for disturbance response
- Another linear model created using sparse surface pressure measurements on upper surface of the wing
- Nonlinear model for roll moment response of wing to pneumatic actuation is designed with SINDy method
- Investigation of optimal operator to account for coupling effects between disturbance model and actuation model using SINDy

Introduction
- Actuation and external disturbance usually decoupled when designing closed-loop active flow control systems
	- Sensible approach and can be effective
- This paper analyzes the case when these two effects are no longer decoupled and they combine non-linearly
	- Three experimental cases are considered
		- Roll only
		- Actuation only
		- Roll plus actuation
- SINDy is used to derive the non-linear coupling and compare three cases

Conclusion
- Robust model constructed of roll moment for periodic and pseudo-random motions
	- Coupled a linear model (pressure) with a Goman-Khrabrov model.
	- Linear model good at predicting main trend
	- Goman-Khrabrov model efficient with fluctuations
- Created plant model using SINDy algorithm
- Using superposition gives 10% error
- Can reduce this error by coupling contributions of actuations and roll disturbances
	- Better closed-loop control with better roll moment estimate
	- 15% error reduction for alpha = 20 deg, using SINDy
- SINDy useful for realtime controllers
	- Runtime very low
	- Can be handled by embedded system
	- Can choose relevant candidates to add or remove for SINDy
	- SINDy promotes robustness
	


## Conclusion 
"A robust model for the prediction of the roll moment for periodic and pseudo-random motions is constructed
by coupling a linear model based on the pressure and an extended Goman-Khrabrov model. The
coupled approach is efficient, because it allows us to take advantage of both prediction models. The linear
pressure-based model is very good at predicting the main trend of the roll moment, and the extended
Goman-Khrabrov model is efficient at reproducing the 
fluctuations of the roll moment.
We also obtained a robust plant model Gp for the actuation using the SINDy algorithm.
The validity of the principle of superposition for 
ow control is investigated and we conclude that the
principle of superposition gives an error up to 10% in the prediction of the roll moment based on measurements.
We showed that we can reduce this error by designing an optimal operator to couple the contributions of
the actuations and roll disturbances to the roll moment. This coupling will allow better performance of the
closed-loop controller, as we will get a more accurate estimation of the roll moment. A reduction of 15% of
the error with the optimal operator designed with the SINDy algorithm was achieved for alpha = 20 deg.
SINDy method is particularly suitable for implementation in real-time controllers and critical systems(e.g.

ight controllers). First, the runtime of this model is very low and therefore can be handled by an embedded
system. Second, the SINDy method allows a refined design of the correction, we can simply choose the relevant
candidates in the dynamic of the system we want to keep or remove. Finally, the SINDy decomposition intrinsically promotes robustness through the sparse regression Kaiser, et al.9"