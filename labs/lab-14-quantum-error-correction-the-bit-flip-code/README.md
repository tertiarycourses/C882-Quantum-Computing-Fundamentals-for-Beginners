# Lab 14 — Quantum Error Correction — The Bit-Flip Code

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 4**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO4 — diagnose outcomes and implement changes

## Goal

Protect one logical qubit against a bit-flip error by encoding it into three physical qubits. Deliberately inject an X error on IBM Quantum Composer, detect it with a syndrome measurement, and correct it.

## What you'll build

A 3-qubit bit-flip code that detects and corrects an injected X error on any one of the three qubits.

## Step-by-step

1. Open a 5-qubit circuit: q[0]-q[2] hold the encoded logical qubit and q[3]-q[4] are syndrome ancillas.
2. ENCODE: place the logical state on q[0] (use H for a superposition, or leave |0>), then CNOT from q[0] to q[1] and from q[0] to q[2]. The logical |0> is now |000> and logical |1> is |111>.

   ```qasm
   h q[0];
   cx q[0], q[1];
   cx q[0], q[2];
   ```

3. Add a barrier, then INJECT an error: place a single X gate on q[1] to simulate a bit flip on the middle qubit.

   ```qasm
   x q[1];
   ```

4. Add a barrier, then measure the first syndrome: CNOT from q[0] to q[3] and CNOT from q[1] to q[3]. This ancilla now holds the parity of qubits 0 and 1.

   ```qasm
   cx q[0], q[3];
   cx q[1], q[3];
   ```

5. Measure the second syndrome: CNOT from q[1] to q[4] and CNOT from q[2] to q[4] — the parity of qubits 1 and 2.

   ```qasm
   cx q[1], q[4];
   cx q[2], q[4];
   ```

6. Measure both ancillas and run. The syndrome reads 11, which uniquely identifies q[1] as the flipped qubit. Syndrome 10 means q[0], 01 means q[2], and 00 means no error.

   ```qasm
   measure q[3] -> c[0];
   measure q[4] -> c[1];
   ```

7. CORRECT the error by applying an X gate to q[1], then verify the logical state is restored by decoding (CNOT q[0]->q[2], CNOT q[0]->q[1], then H on q[0]) and measuring q[0].

   ```qasm
   x q[1];
   cx q[0], q[2];
   cx q[0], q[1];
   h q[0];
   measure q[0] -> c[2];
   ```

8. Move the injected X to q[0] and then to q[2], and confirm the syndrome changes to 10 and 01 respectively — the code locates the error without ever measuring the logical state itself.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Each single-qubit X error produces its own distinct syndrome, and after correction the decoded logical qubit returns its original value. You can explain why the syndrome measurement does not collapse the logical superposition.

---

Full narrative walkthrough: **Learner Guide, Lab 14**.
