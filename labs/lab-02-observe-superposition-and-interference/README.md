# Lab 2 — Observe Superposition and Interference

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 1**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO1 — identify key principles of quantum computing

## Goal

Build the smallest possible quantum circuit — a single Hadamard gate — on IBM Quantum Composer, run it on the simulator, and read the probability histogram. Then add a second Hadamard to see interference cancel the superposition completely.

## What you'll build

Two single-qubit circuits: H (a 50/50 random bit) and H-H (a deterministic 0), with their histograms.

## Step-by-step

1. Sign in to IBM Quantum at https://quantum.cloud.ibm.com/ and open the Composer from the left-hand menu.
2. Create a new circuit and set the circuit width to 1 qubit and 1 classical bit.
3. Drag an H gate onto qubit q[0], then drag a Measure operation after it.
4. Open the OpenQASM editor and confirm the code reads: h q[0]; measure q[0] -> c[0];

   ```qasm
   h q[0];
   measure q[0] -> c[0];
   ```

5. Run the circuit on the simulator with 1024 shots and read the probability histogram — you should see roughly 50% |0> and 50% |1>.
6. Now insert a SECOND H gate between the first H and the Measure, so the circuit is H-H-Measure.

   ```qasm
   h q[0];
   h q[0];
   measure q[0] -> c[0];
   ```

7. Run again with 1024 shots. The result is now 100% |0> — the two paths interfered destructively for |1> and constructively for |0>.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Circuit 1 gives approximately 50/50 across |0> and |1>; circuit 2 gives 100% |0>. You can explain that the second H did not 'undo randomness' — it caused interference, which is the resource quantum algorithms exploit.

---

Full narrative walkthrough: **Learner Guide, Lab 2**.
