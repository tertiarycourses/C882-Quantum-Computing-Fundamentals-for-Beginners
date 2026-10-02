# Lab 4 — Single-Qubit Gates — Pauli X, Y, Z and Hadamard

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 2**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO2 — utilise quantum gates and logic to derive solutions

## Goal

Work through the single-qubit gate set on IBM Quantum Composer. Apply each Pauli gate and the Hadamard to |0> and to |1>, read the resulting statevector, and verify from the simulator that each Pauli gate is its own inverse.

## What you'll build

A gate reference table you fill in yourself: the output state and measurement probabilities for X, Y, Z and H on |0> and |1>.

## Step-by-step

1. Open a 1-qubit circuit in IBM Quantum Composer and keep the statevector panel visible.
2. Apply X to q[0] and confirm the state becomes |1> — X is the quantum NOT gate.

   ```qasm
   x q[0];
   ```

3. Clear, apply Z to q[0], and confirm the state stays |0>. Z acts only on the |1> component, so it has no visible effect here.

   ```qasm
   z q[0];
   ```

4. Build H then Z. The state moves |0> -> |+> -> |->. Z now flips the sign of the |1> amplitude — a relative phase, invisible to measurement.

   ```qasm
   h q[0];
   z q[0];
   ```

5. Apply Y to |0> and read the statevector: you get i|1>. Y combines a bit flip and a phase flip (Y = iXZ).

   ```qasm
   y q[0];
   ```

6. Verify self-inversion: build X-X, then Z-Z, then H-H. Each returns the qubit to |0>, confirming X^2 = Y^2 = Z^2 = H^2 = I.

   ```qasm
   x q[0];
   x q[0];
   ```

7. Add a Measure to the H-Z circuit and run 1024 shots. The histogram is still 50/50 — proving a relative phase alone cannot be measured directly.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

You can complete a table giving the output state for X, Y, Z and H applied to |0> and to |1>, and demonstrate on the Composer that applying any one of them twice returns the qubit to its starting state.

---

Full narrative walkthrough: **Learner Guide, Lab 4**.
