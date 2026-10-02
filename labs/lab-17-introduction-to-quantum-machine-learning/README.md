# Lab 17 — Introduction to Quantum Machine Learning

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 4**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO4 — propose and implement changes for quantum computing applications

## Goal

Build a parameterised variational circuit — the building block of every quantum machine learning model. Vary the parameters on IBM Quantum Composer, observe the effect on the output distribution, and see how a hybrid quantum-classical training loop works.

## What you'll build

A 2-qubit variational ansatz whose rotation angles you tune to steer the output distribution towards a target.

## Step-by-step

1. Understand the pattern: a variational circuit has a data-encoding layer, a trainable rotation layer, an entangling layer, and a measurement that feeds a classical optimiser.
2. Open a 2-qubit circuit. Build the ENCODING layer: an RY gate on each qubit with the angle set from your input data (use pi/4 on q[0] and pi/3 on q[1]).

   ```qasm
   ry(pi/4) q[0];
   ry(pi/3) q[1];
   ```

3. Add the ENTANGLING layer: a CNOT with control q[0] and target q[1]. This lets the model capture correlations between features.

   ```qasm
   cx q[0], q[1];
   ```

4. Add the TRAINABLE layer: an RY gate on each qubit with variational parameters — start with theta = pi/2 on both.

   ```qasm
   ry(pi/2) q[0];
   ry(pi/2) q[1];
   ```

5. Measure both qubits and run 1024 shots. Record the four output probabilities — this is the model's current prediction.

   ```qasm
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

6. Now train by hand: change the trainable angles to pi/4, re-run, and see whether the probability of your target outcome went up or down. This is one step of the optimiser's job.

   ```qasm
   ry(pi/4) q[0];
   ry(pi/4) q[1];
   ```

7. Repeat for at least four angle settings and tabulate the target-outcome probability against the angle. Pick the best setting — you have just performed a manual parameter sweep.
8. Relate this to real QML: VQE minimises a molecule's ground-state energy and QAOA maximises a combinatorial objective, both by running exactly this loop with a classical optimiser choosing the next angles.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

You can produce a table of target-outcome probability versus rotation angle and identify the best angle you tested. You can name the four parts of a variational circuit and explain why the loop is called hybrid quantum-classical.

---

Full narrative walkthrough: **Learner Guide, Lab 17**.
