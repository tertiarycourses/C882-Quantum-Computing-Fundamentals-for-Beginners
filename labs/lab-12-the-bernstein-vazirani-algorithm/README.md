# Lab 12 — The Bernstein-Vazirani Algorithm

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Recover a hidden 4-bit string in a single query instead of four. Build the circuit for the hidden string 0101 (decimal 5) until it is second nature.

## What you'll build

A 5-qubit Bernstein-Vazirani circuit that reads out the hidden string 0101 deterministically.

## Step-by-step

1. Open a 5-qubit circuit: q[0]-q[3] are the input register and q[4] is the ancilla. Add 4 classical bits.
2. Prepare the ancilla in |->: apply X to q[4], then H to q[4].

   ```qasm
   x q[4];
   h q[4];
   ```

3. Apply H to every input qubit q[0], q[1], q[2] and q[3] to create a uniform superposition over all 16 inputs.

   ```qasm
   h q[0];
   h q[1];
   h q[2];
   h q[3];
   ```

4. Add a barrier, then build the oracle for the hidden string s = 0101. Place a CNOT from each qubit where s has a 1 — that is q[0] and q[2] — onto the ancilla q[4].

   ```qasm
   cx q[0], q[4];
   cx q[2], q[4];
   ```

5. Add a barrier and apply H again to all four input qubits q[0]-q[3].

   ```qasm
   h q[0];
   h q[1];
   h q[2];
   h q[3];
   ```

6. Measure the four input qubits into the classical register.

   ```qasm
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   measure q[2] -> c[2];
   measure q[3] -> c[3];
   ```

7. Run 1024 shots. A single bar appears at 0101 with 100% probability — the hidden string, found in ONE query.
8. Change the hidden string to 1101 by adding CNOTs from q[0], q[1] and q[3] to the ancilla, and confirm the readout follows. Note that phase kickback is what writes s onto the input register.

   ```qasm
   x q[4];
   h q[4];
   h q[0];
   h q[1];
   h q[2];
   h q[3];
   cx q[0], q[4];
   cx q[1], q[4];
   cx q[3], q[4];
   h q[0];
   h q[1];
   h q[2];
   h q[3];
   ```


## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

The histogram shows a single 100% bar at the hidden string you encoded. You can explain the oracle construction rule (one CNOT per 1-bit of s) and that a classical algorithm would need n separate queries.

---

Full narrative walkthrough: **Learner Guide, Lab 12**.
