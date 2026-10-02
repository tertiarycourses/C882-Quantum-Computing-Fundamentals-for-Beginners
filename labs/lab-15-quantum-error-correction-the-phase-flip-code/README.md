# Lab 15 — Quantum Error Correction — The Phase-Flip Code

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 4**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO4 — diagnose outcomes and implement changes

## Goal

Phase flips are invisible to the bit-flip code. Learn the standard trick — surround the code with Hadamards to turn Z errors into X errors — and correct a phase flip on IBM Quantum Composer.

## What you'll build

A 3-qubit phase-flip code that detects and corrects an injected Z error.

## Step-by-step

1. First show the problem: build the bit-flip code from Lab 14 but inject a Z error instead of an X. The syndrome reads 00 — the error is completely undetected.

   ```qasm
   cx q[0], q[1];
   cx q[0], q[2];
   z q[1];
   ```

2. Now build the phase-flip code. ENCODE as before with two CNOTs, then add an H to EACH of q[0], q[1] and q[2]. This moves the code into the X basis, where |+++> and |---> are the logical states.

   ```qasm
   cx q[0], q[1];
   cx q[0], q[2];
   h q[0];
   h q[1];
   h q[2];
   ```

3. Add a barrier and INJECT a Z error on q[1] — a phase flip on the middle qubit.

   ```qasm
   z q[1];
   ```

4. Add a barrier, then apply H to all three code qubits again. This converts the Z error into an X error, which the bit-flip machinery can see.

   ```qasm
   h q[0];
   h q[1];
   h q[2];
   ```

5. Run the same syndrome extraction as Lab 14: CNOTs from q[0] and q[1] onto ancilla q[3], and from q[1] and q[2] onto ancilla q[4].

   ```qasm
   cx q[0], q[3];
   cx q[1], q[3];
   cx q[1], q[4];
   cx q[2], q[4];
   ```

6. Measure the ancillas and run. The syndrome now reads 11, correctly identifying q[1] — the phase flip has become visible.

   ```qasm
   measure q[3] -> c[0];
   measure q[4] -> c[1];
   ```

7. Correct by applying X to q[1] (in this rotated basis), then decode and verify the logical qubit is intact.

   ```qasm
   x q[1];
   ```

8. Note how the Shor 9-qubit code combines both: three phase-flip blocks, each of three bit-flip qubits, correcting an ARBITRARY single-qubit error.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

A Z error is invisible to the bit-flip code (syndrome 00) but produces syndrome 11 in the phase-flip code. You can explain the H-conjugation trick: H Z H = X.

---

Full narrative walkthrough: **Learner Guide, Lab 15**.
