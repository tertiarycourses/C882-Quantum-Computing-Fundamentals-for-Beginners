# Lab 6 — Two-Qubit Gates — CNOT, CZ, SWAP and Toffoli

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 2**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO2 — utilise quantum gates and logic to derive solutions

## Goal

Build the truth table of the multi-qubit gates by hand on IBM Quantum Composer. Prepare each computational basis input with X gates, apply the gate, and read off the output — the fastest way to make CNOT, CZ, SWAP and Toffoli concrete.

## What you'll build

Completed truth tables for CNOT, SWAP and Toffoli, plus a demonstration that CZ only applies a phase.

## Step-by-step

1. Open a 2-qubit circuit. Prepare the input |10> by placing an X gate on q[0], then apply CNOT with control q[0] and target q[1].

   ```qasm
   x q[0];
   cx q[0], q[1];
   ```

2. Measure both qubits and run. The output is |11> — the control was |1>, so the target flipped.
3. Repeat for input |00> (no X gates). The output stays |00>, because the control was |0>. Record all four rows of the CNOT truth table.

   ```qasm
   cx q[0], q[1];
   ```

4. Replace the CNOT with a CZ gate on input |11> (X on both qubits). The measured bits are unchanged — CZ applies a -1 phase, not a bit flip.

   ```qasm
   x q[0];
   x q[1];
   cz q[0], q[1];
   ```

5. Make the CZ phase visible: build H on q[1], then CZ, then H on q[1]. This converts CZ into a CNOT, and the bit flip now appears.

   ```qasm
   x q[0];
   h q[1];
   cz q[0], q[1];
   h q[1];
   ```

6. Place a SWAP gate on input |10> and run. The output is |01> — the two qubit states have been exchanged.

   ```qasm
   x q[0];
   swap q[0], q[1];
   ```

7. Open a 3-qubit circuit, prepare |110> with X on q[0] and q[1], and apply a Toffoli (CCX) with controls q[0], q[1] and target q[2]. The target flips only because BOTH controls are |1>.

   ```qasm
   x q[0];
   x q[1];
   ccx q[0], q[1], q[2];
   ```


## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Your CNOT and Toffoli truth tables are complete and correct for every basis input, and you can demonstrate that H-CZ-H on the target is equivalent to a CNOT.

---

Full narrative walkthrough: **Learner Guide, Lab 6**.
