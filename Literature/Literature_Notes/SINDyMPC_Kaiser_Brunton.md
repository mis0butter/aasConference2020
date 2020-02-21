# Sparse identification of nonlinear dynamics for model predictive control in the low-data limit

Abstract
- Dynamics discovered with data extends reach of MPC
- Other methods (e.g. neural networks, etc.) require large volumes of data so not good for online system ID
	- Not good for abrupt change of system dynamics
- SINDY 
	- Can use limited, noisy data
	- Identifies fewest terms in model needed to explain data
- SINDY combined with MPC compared to SINDY-Neural Networks
	- Higher performance
	- Less data
	- More computationally efficient
	- Robust to noise
- SINDY-MPC compared to linear data-drive models
	- Improved performance
	- Linear models can provide gap information until enough data is available
- Three applications
	- Chaotic Lorenz system
	- Control of F8 aircraft
	- HIV model incorporating drug treatment
	


Introduction
- Current challenges for data-driven discovery use of realtime control
	- Strongly nonlinear
	- High dimensional
	- Multiscale systems
	- Difficult online recovery of abrupt changes in dynamics
- Use of SINDY to identify models with actuation
- Demonstrate improved performance in low-data limit techniques compared with other data-driven methods
- MPC well-positioned for data-driven system identification
- MPC provides the following benefits
	- Simple and intuitive tuning
	- Simple to complex phenomena
	- Control with time delays
	- Non-minimum phase dynamics (what is this?)
	- Instability
	- Can incorporate constraints and multiple operating conditions
	- Intrinsic compensation for dead time (what is this?)
- MPC has following drawbacks
	- Requires suitable model
		- System ID
		- Model reduction techniques
	- Can be expensive and time-consuming
- Current data-driven models
	- Examples
		- Eigensystem realization algorithm
		- Volterra series
		- Autoregressive models (e.g. ARX, ARMA, NARX and NARMAX [18] models)
		- Neural network models
	- Yield black boxes
		- Limited interpretability, physical insights, and ability to generalize
	- With stronger computation, NN has been combined with MPC
		- Impressive results with large amounts of data
		- Susceptible to abrupt changes
	- Suffer from overfitting
- SINDY
	- Can enforce known physics (e.g. constraints, conservation laws, and symmetries)
		- Can be used to improve stability and performance
- SINDY-MPC 
	- Compared to SINDY-NN
		- Better prediction accuracy (especially with low to moderate amounts of noisy data)
		- Less expensive to train and execute than NN (better for realtime)
	- Demonstrate various levels of complexity
		

Conclusion
- SINDY effective with few active terms in dynamics equations
- Effective with very little data
- Capable of controlling strongly nonlinear systems, purely from measurement data
- Can be used in realtime, even with abrupt changes to model
- Three systems considered
	- Lotka-Volterra (weakly nonlinear)
	- Chaotic Lorenz
	- Non-affine 58 crusador model
	- HIV/immune response system
- Strengths and weaknesses outlined in table (PNG in literature notes directory)
- SINDY fair with high-dimensional data (what is this?)
- SINDY is more smart data than big data
- Must look into the following for SINDY in the future 
	- Characterization of the effect of noise
	- Error estimates
	- Conditions and guarantees of convergence
	


## Conclusion 
"In conclusion, we have demonstrated the effective integration of data-driven sparse model
discovery forMPC in the low-data limit. The sparse identification of nonlinear dynamics (SINDY)
algorithm has been extended to discover nonlinear models with actuation and control, resulting
in interpretable and parsimonious models. Moreover, because SINDY only identifies the few
active terms in the dynamics, it requires less data than many other leading machine learning
techniques, such as NNs, and prevents overfitting. When integrated with MPC, SINDY provides
computationally tractable and accurate models that can be trained on very little data. The
resulting SINDY-MPC framework is capable of controlling strongly nonlinear systems, purely
from measurement data, and the model identification is fast enough to discover models in realtime,
even in response to abrupt changes to the model. The SINDY-MPC approach is compared
with MPC based on data-driven linear models and NN models on four nonlinear dynamical
systems of different complexities and challenges: the weakly nonlinear Lotka–Volterra system, the
chaotic Lorenz system, the non-affine F8 crusadormodel, and the HIV/immune response system,
which variables are of different order of magnitudes and where only partial state information is
available.
The relative strengths and weaknesses of each method are summarized in table 2. By nearly
every metric, linear DMDc models and nonlinear SINDYc models outperform NN models. In
fact, DMDc may be seen as the limit of SINDYc when the library of candidate terms is restricted
to linear terms. SINDY-MPC provides the highest performance control and requires significantly
less training data and execution time compared with NN. However, for very low amounts of
training data, DMDc provides a useful model until the SINDYc algorithm has enough data
to characterize the dynamics. Thus, we advocate the SINDY-MPC framework for effective and
efficient nonlinear control, with DMDc as a stopgap after abrupt changes until a new SINDYc
model can be identified. Note that a crucial step in SINDY is the choice of library functions, which
is often informed by expert knowledge about what category of nonlinearities to include. A poor
choice of the library will generally yield a non-sparse model.Without any prior knowledge about
the system type, a sweep through different classes of candidate functions is required. However,
once a model is learned from a sufficiently rich library, the model is often able to generalize
beyond the training data. If the model structure is not fixed, but varies heterogeneously in state
space, NNs may provide a more flexible and generalizable architecture to represent the dynamics.
A heterogeneous model structure can potentially be incorporated into SINDy by additionally
learning a library of models [72,73].
This work motivates a number of future extensions and investigations. Although the
preliminary application of SINDYc for MPC is encouraging, this study does not leverage many
of the powerful new techniques in sparse model identification. Figure 3 provides a schematic
of the modularity and demonstrated extensions that are possible within the SINDy framework.
In realistic applications, the system may be extremely high-dimensional, and the SINDy library
does not scale well with the size of the data. Fortunately, many high-dimensional systems evolve
on a low-dimensional attractor, and it is often possible to identify a model on this attractor,
for example by identifying a SINDy model on low-dimensional coordinates obtained through
a singular value decomposition [2] or manifold learning [74]. In other applications, full-state
measurements are unavailable, and the system must be characterized by limited measurements.
It has recently been shown that delay coordinates provide a useful embedding to identify simple
models of chaotic systems [53], building on the celebrated Takens embedding theorem [75]. Delay
coordinates also define intrinsic coordinates for the Koopman operator [53], which provides a
simple linear embedding of nonlinear systems [76,77]. Koopman models have recently been used
for MPC [24,25] and have been identified using SINDy regression [78] and subsequently used
for optimal control [78]. Recently, SINDY has been extended to modify an existing model based
on new incoming measurements to enable rapid model recovery from abrupt changes to the
system [30]. Learning quickly from limited measurements is an important task, which may be
viewed in terms of design of experiments; specifically, optimizing the actuation input to collect
22
rspa.royalsocietypublishing.org Proc. R. Soc. A 474: 20180335
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
the most informative measurements to learn a more predictive model faster. This would require
the formulation of a different cost function, which measures the predictive power of the model,
to determine future actuation inputs. Rapid learning is also related to the question of quantity
versus quality of data and identifiability [48,49]; more data is usually better, although it is possible
to work with less data if it is representative of the system. Further, similar methods could be
used to optimize sensors and exploit partial measurements within the SINDY-MPC framework.
All of these innovations suggest a shift from the perspective of big data to the control-oriented
perspective of smart data.
Figure 3 also demonstrates innovations to the SINDy regression to include physical
constraints, known model structure, and model selection, which may all benefit the goal of realtime
identification and control. Known symmetries, conservation laws, and constraints may be
readily included in both the SINDYc and DMDc modelling frameworks [31], as they are both
based on least-squares regression, possibly with sequential thresholding. It is thus possible to use
a constrained least-squares algorithm, for example, to enforce energy conserving constraints in a
fluid system, whichmanifest as anti-symmetric quadratic terms [31]. Enforcing constraints has the
potential to further reduce the amount of data required to identify models, as there are less free
parameters to estimate, and the resulting systems have been shown to have improved stability
in some cases. It is also possible to extend the SINDy algorithm to identify models in libraries
that encode richer dynamics, such as rational function nonlinearities [79]. Finally, incorporating
information criteria provides an objective metric for model selection among various candidate
SINDy models with a range of complexity.
The SINDY-MPC framework has significant potential for the real-time control of strongly
nonlinear systems. Moreover, the rapid training and execution times indicate that SINDy models
may be useful for rapid model identification in response to abrupt model changes, and this
warrants further investigation. The ability to identify accurate and efficient models with small
amounts of training data may be a key enabler of recovery in time-critical scenarios, such asmodel
changes that lead to instability. In addition, for broad applicability and adoption, the SINDy
modelling framework must be further investigated to characterize the effect of noise, derive error
estimates, and provide conditions and guarantees of convergence. These future theoretical and
analytical extensions are necessary to certify the model-based control performance."