# Sparse Identification of Nonlinear Dynamics with Control (SINDYc) 

Abstract
- data-driven identification of nonlinear dynamical systems 
  - with inputs and forcing using regression methods 
    - sparse regression 
- SINDY: sparse identification of nonlinear dynamics 
  - generalized to iniclude external inputs and feedback control 
- examples 
  - Lotka-Volterra predator-prety model 
  - Lorenz system with forcing and control 
- connect algorithm with dynamic mode decomposition (DMD) and Koopman operator theory 
  
Notes
- system identification (SI) comprises large collection of methods to characterize dynamic system using data 
- Various techniques in SI: DMD, Koopman analysis, SINDY
  - each is cast as regression problem of data onto models 
- DMD
  - originated in fluids community, built on proper orthogonal decomposition (POD) 
  - seek linear operator A that approximately relates snapshots for short periods of time 
    - reconstruct leading eigenvalues and eigenvectors of A from eigendecomposition 
    - compute SVD, compute projection of least-square solution, compute eigendecomposition 
- Koopman analysis 
  - Koopman operator is infinite-dimensional linear operator 
    - describes how measurement function evolves through nonlinear dynamics 
  - Koopman operator acts on scalar measurement functions by the composition of those functions with  dynamic updates 
  - DMD approximates spectrum of Koopman operator using linear observable functions 
  
SINDY
- identifies fully nonlinear dynamical systems from measurement data 
  - relies that many dynamical systems have few terms on right hand of governing equations 
- dynamical system  can be written with *sparse* coefficients
  - employ sparse regression to identify coefficients corresponding to fewest nonlinearities that give good model performance 
- choosing library of candidate dynamics is crucial choice in the SINDY algorithm 
- to approximate derivatives from noisy state meaurements, SINDY uses total variation regularized derivative 


## Conclusion 

"In this work, we have generalized the sparse identification
of nonlinear dynamics (SINDY) algorithm to include inputs and control. This involved generalizing the library of
candidate nonlinear terms to include functions not only
of the state x, but also of the input u, including cross
terms between state and input. This new algorithm is cast
in an overarching regression framework in Fig. 1, relating
it to other algorithms that determine models from data,
including dynamics mode decomposition (DMD), DMD
with control, extended DMD, and Koopman analysis.
The new method has been tested on a predator prey model
and the Lorenz system with various forcing and control
models. The proposed algorithm should scale to the same
class of problems where SINDY is useful, since they are
built on the same computational architecture." 

"There are a number of interesting directions to extend this
work. First, it is important to determine optimal strategies
to disambiguate the effect of a state-feedback control signal
from internal state dynamics; this may be achieved by
additive white noise on the input signal or occasional kicks
to the system, but understanding the tradeoffs and benefits
of these strategies will be useful. More importantly, it is
likely possible to design input sequences that optimally
probe complex systems to extract high-value information
that will be useful to characterize the system. For example,
perhaps perturbing some systems off-attractor will provide
valuable information about nonlinear terms in the dynamics if the on-attractor data may strongly resemble a linear
system. If the state and control variables have different
levels of sparsity, it may be possible to use a weighted convex optimization to penalize the state and control sparsity
separately. It may also important to improve the model
identification if the control law u = k(x) is known. These
are promising areas of current and future research."
