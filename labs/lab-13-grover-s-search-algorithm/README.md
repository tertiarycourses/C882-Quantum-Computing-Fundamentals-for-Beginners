# Lab 13 — Grover's Search Algorithm

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Build the best-known quantum search algorithm on IBM Quantum Composer. Mark a target item with an oracle, amplify it with the diffusion operator, and find it in O(sqrt(N)) steps.

## What you'll build

A 2-qubit Grover circuit that finds the marked item with near-certainty, plus a 3-qubit version.

## Step-by-step

1. Open a 2-qubit circuit with 2 classical bits. Apply H to q[0] and q[1] to create an equal superposition over |00>, |01>, |10> and |11>, each at 25%.

   ```qasm
   h q[0];
   h q[1];
   ```

2. Add a barrier, then build the ORACLE that marks |11> with a phase flip: a single CZ gate between q[0] and q[1].

   ```qasm
   cz q[0], q[1];
   ```

3. Add a barrier, then build the DIFFUSION operator (inversion about the mean): H on both, X on both, CZ, X on both, H on both.

   ```qasm
   h q[0];
   h q[1];
   x q[0];
   x q[1];
   cz q[0], q[1];
   x q[0];
   x q[1];
   h q[0];
   h q[1];
   ```

4. Measure both qubits and run 1024 shots. The marked state |11> appears with essentially 100% probability after just ONE Grover iteration.

   ```qasm
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

5. Change the marked item to |01>: put an X on q[0] before and after the CZ inside the oracle, so the phase flip lands on |01> instead.

   ```qasm
   h q[0];
   h q[1];
   x q[0];
   cz q[0], q[1];
   x q[0];
   ```

6. Re-run and confirm the histogram now peaks at |01|. Repeat for |00> (X on both qubits around the CZ) and |10>.
7. Scale to 3 qubits searching for |111>: H on q[0..2], a CCZ oracle (or H-CCX-H on q[2]), then the 3-qubit diffusion operator, and repeat the iteration TWICE.

   ```qasm
   h q[0];
   h q[1];
   h q[2];
   h q[2];
   ccx q[0], q[1], q[2];
   h q[2];
   ```

8. Compare the query counts: Grover needs about sqrt(N) iterations while a classical search needs N/2 on average — a quadratic speedup.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

For 2 qubits, the marked state is returned with near-100% probability after one iteration, and you can re-target the oracle to any of the four states. You can state why the number of iterations must be about pi/4 * sqrt(N) and what happens if you over-rotate.

---

Full narrative walkthrough: **Learner Guide, Lab 13**.
