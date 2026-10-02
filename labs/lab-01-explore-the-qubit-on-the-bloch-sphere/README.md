# Lab 1 — Explore the Qubit on the Bloch Sphere

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 1**  ·  **Platform:** Bloch Sphere Simulator (bloch.kherb.io)  ·  [https://bloch.kherb.io/](https://bloch.kherb.io/)

**Learning outcome:** LO1 — identify and use appropriate quantum computing platforms

## Goal

Use an interactive Bloch-sphere simulator to see what a qubit actually is: a point on a sphere. Apply X, H and Z and watch the state vector move, so that every gate you meet later has a picture attached to it.

## What you'll build

A worked set of Bloch-sphere states (|0>, |1>, |+>, |->) and the gates that produce them.

## Step-by-step

1. Open the Bloch sphere simulator at https://bloch.kherb.io/ and identify the three axes. The north pole is |0> and the south pole is |1>.
2. Confirm the qubit starts at the north pole — the state |0>, which measures as 0 with probability 1.
3. Apply the X gate. The vector rotates 180 degrees about the X axis to the south pole: X|0> = |1>.
4. Reset, then apply H. The vector moves to the +X equator — the state |+> = (|0> + |1>)/sqrt(2), a 50/50 superposition.
5. With the state at |+>, apply Z. The vector rotates to -X, giving |-> = (|0> - |1>)/sqrt(2). Note the probabilities did NOT change — only the relative phase.
6. Apply H a second time from |+>. The vector returns to |0>, showing that H is its own inverse (H.H = I).
7. Record for each state the polar angle theta and azimuth phi, and relate them to |psi> = cos(theta/2)|0> + e^(i.phi).sin(theta/2)|1>.
## Test it

You can place |0>, |1>, |+> and |-> on the sphere from memory, and state which gate maps each one to the next. You can explain why Z changes |+> to |-> without changing any measurement probability.

---

Full narrative walkthrough: **Learner Guide, Lab 1**.
