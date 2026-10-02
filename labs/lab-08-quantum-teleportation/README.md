# Lab 8 — Quantum Teleportation

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Teleport an unknown qubit state from Alice to Bob on IBM Quantum Composer using one shared Bell pair and two classical bits. Build it until you can do it from memory.

## What you'll build

A 3-qubit teleportation circuit that moves a |+> state from q[0] to q[2] and verifies the transfer.

## Step-by-step

1. Open a 3-qubit circuit in IBM Quantum Composer. Qubit q[0] is Alice's message, q[1] is Alice's half of the Bell pair, and q[2] is Bob's half.
2. Prepare the state to be teleported. Place an H on q[0] to create |+> = (|0> + |1>)/sqrt(2).

   ```qasm
   h q[0];
   ```

3. Create the shared Bell pair between Alice and Bob: H on q[1], then CNOT with control q[1] and target q[2].

   ```qasm
   h q[1];
   cx q[1], q[2];
   ```

4. Add a barrier, then perform Alice's Bell measurement: CNOT with control q[0] and target q[1], followed by H on q[0].

   ```qasm
   cx q[0], q[1];
   h q[0];
   ```

5. Measure q[0] and q[1] into the classical bits. These two bits are the classical message Alice sends to Bob.

   ```qasm
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

6. Apply Bob's conditional corrections: a CNOT from q[1] to q[2] and a CZ from q[0] to q[2]. On the Composer these deferred-measurement gates reproduce the classically controlled X and Z.

   ```qasm
   cx q[1], q[2];
   cz q[0], q[2];
   ```

7. Verify the teleportation: append an H to q[2] and measure it. Since the teleported state was |+>, H maps it back to |0>, so q[2] must read 0 on every shot.

   ```qasm
   h q[2];
   measure q[2] -> c[2];
   ```

8. Run 1024 shots on the simulator and confirm the q[2] bit is 0 in every outcome, while q[0] and q[1] vary randomly across all four combinations.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Bob's qubit q[2] measures 0 on essentially every shot after the verification H, proving the |+> state arrived intact. You can explain why the no-cloning theorem is not violated: Alice's measurement destroys the original.

---

Full narrative walkthrough: **Learner Guide, Lab 8**.
