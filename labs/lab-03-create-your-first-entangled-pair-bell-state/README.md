# Lab 3 — Create Your First Entangled Pair (Bell State)

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 1**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO1/LO2 — use a quantum platform to demonstrate entanglement

## Goal

Build the Bell state (|00> + |11>)/sqrt(2) on IBM Quantum Composer with just H and CNOT, and confirm from the histogram that the two qubits are perfectly correlated — the signature of entanglement.

## What you'll build

A 2-qubit Bell-state circuit whose histogram shows only |00> and |11>, each near 50%.

## Step-by-step

1. Open a new circuit in IBM Quantum Composer with 2 qubits and 2 classical bits.
2. Place an H gate on q[0]. This puts the control qubit into superposition.

   ```qasm
   h q[0];
   ```

3. Place a CNOT with the control on q[0] and the target on q[1] — drag the CNOT so its solid dot sits on q[0].

   ```qasm
   cx q[0], q[1];
   ```

4. Add Measure operations on both q[0] and q[1].

   ```qasm
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

5. Inspect the statevector panel: the amplitudes are 1/sqrt(2) on |00> and 1/sqrt(2) on |11>, and exactly zero on |01> and |10>.
6. Run on the simulator with 1024 shots. The histogram shows only two bars — |00> near 50% and |11> near 50%.
7. Reason about the correlation: no shot ever produces |01> or |10>, so measuring one qubit instantly determines the other.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Your histogram contains only |00> and |11>, each approximately 50%, with |01> and |10> essentially absent. You can explain why this state cannot be written as a product of two independent single-qubit states.

---

Full narrative walkthrough: **Learner Guide, Lab 3**.
