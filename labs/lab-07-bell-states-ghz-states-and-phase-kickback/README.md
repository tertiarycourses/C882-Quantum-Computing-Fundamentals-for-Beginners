# Lab 7 — Bell States, GHZ States and Phase Kickback

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 2**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO2 — utilise quantum gates and logic to derive solutions

## Goal

Build all four Bell states and the 3-qubit GHZ state on IBM Quantum Composer, then demonstrate phase kickback — the mechanism that makes the Deutsch, Bernstein-Vazirani and phase-estimation algorithms work.

## What you'll build

The four Bell states, a GHZ state, and a phase-kickback circuit showing the phase moving onto the control qubit.

## Step-by-step

1. Build the Phi+ Bell state with H on q[0] then CNOT(q[0], q[1]). Confirm the histogram shows only |00> and |11>.

   ```qasm
   h q[0];
   cx q[0], q[1];
   ```

2. Add an X on q[1] before the CNOT to build Psi+ = (|01> + |10>)/sqrt(2). The histogram now shows only |01> and |10>.

   ```qasm
   h q[0];
   x q[1];
   cx q[0], q[1];
   ```

3. Add a Z on q[0] after the CNOT to build Phi- = (|00> - |11>)/sqrt(2). The histogram is unchanged, but the statevector panel shows the negative amplitude.

   ```qasm
   h q[0];
   cx q[0], q[1];
   z q[0];
   ```

4. Extend to three qubits: H on q[0], CNOT(q[0], q[1]), CNOT(q[0], q[2]). This is the GHZ state (|000> + |111>)/sqrt(2).

   ```qasm
   h q[0];
   cx q[0], q[1];
   cx q[0], q[2];
   ```

5. Run the GHZ circuit for 1024 shots and confirm only |000> and |111> appear — all three qubits are perfectly correlated.
6. Now demonstrate phase kickback. Build a 2-qubit circuit: X on q[1], then H on both qubits, then CNOT(q[0], q[1]), then H on q[0].

   ```qasm
   x q[1];
   h q[0];
   h q[1];
   cx q[0], q[1];
   h q[0];
   ```

7. Measure q[0] and run. You measure |1> with certainty, even though the CNOT targeted q[1] — the phase from the |-> target has kicked back onto the control.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

You can produce at least three of the four Bell states and the GHZ state, and explain why the phase-kickback circuit deterministically measures 1 on the control qubit.

---

Full narrative walkthrough: **Learner Guide, Lab 7**.
