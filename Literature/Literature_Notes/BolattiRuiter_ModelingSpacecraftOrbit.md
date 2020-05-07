# Modeling Spacecraft Orbit-Attitude Coupled Dynamics in Close Proximity to Asteroids

Abstract
- Typically, attitude and orbit dynamics are modeled as being decoupled
- Second degree models have been developed but they do not reflect complex gravity field of small bodies (does not converge inside the Brillouin sphere?)
- This paper uses polyhedron gravity model augmented with point masses inside the asteroid
- The paper compares this model to existing point mass models

Introduction
- Spherical harmonic methods are accurate outside of the Brillouin sphere (circumscribing sphere), but diverge inside


Conclusion
- Second order polyhedron gravity model augmented with point masses was implemented to account for orbit-attitude coupling
- Compared to spherical harmonics model used in current literature
  - Gravity model second order, attitude-orbit coupling first order
- Significant difference of the orbital motion between the proposed high fidelity model and the spherical harmonics model.
  - Spherical harmonics model may not be sufficient for mission planning nor for development of control laws that explot the orbit-attitude coupling.
	


## Conclusion 
"An expansion of the polyhedron model with point-masses ﬁlling the entire shape model was proposed to account for the orbit-attitude coupling phenomena (up to the second order) of a rigid body spacecraft. This gravitational model was then compared to a spherical harmonics model used in the current literature, that is expanded up to second-degree-and-order and also considers orbit-attitude coupling (up to the ﬁrst order). It was shown that with the proposed high ﬁdelity gravitational model, the spacecraft attitude motion has a signiﬁcant eﬀect on the spacecraft orbital motion, as has previously been observed with the spherical harmonics gravitational model. However, as demonstrated in this paper, there is also a signiﬁcant diﬀerence of the spacecraft orbital motion between the proposed high ﬁdelity model and the spherical harmonics model. This indicates that the spherical harmonics model may not be suﬃcient for mission planning, nor for developing control laws that exploit the orbit-attitude coupling, particularly when the spacecraft is in close proximity to the asteroid."