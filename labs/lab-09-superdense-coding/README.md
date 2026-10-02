# Lab 9 — Superdense Coding

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Run teleportation in reverse: send two classical bits by transmitting one qubit. Encode each of the four messages 00, 01, 10 and 11 on IBM Quantum Composer and confirm Bob decodes each one with certainty.

## What you'll build

Four superdense-coding circuits, one per two-bit message, each decoding deterministically.

## Step-by-step

1. Open a 2-qubit circuit. Create the shared Bell pair first: H on q[0], then CNOT(q[0], q[1]).

   ```qasm
   h q[0];
   cx q[0], q[1];
   ```

2. Add a barrier. Alice now encodes her two-bit message by acting on her qubit q[0] ONLY.
3. To send 00, Alice applies nothing (the identity). Add the decoder and run — see the next steps for the decoder.
4. Build the decoder that Bob applies: CNOT(q[0], q[1]) followed by H on q[0], then measure both qubits.

   ```qasm
   cx q[0], q[1];
   h q[0];
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

5. Run the 00 circuit for 1024 shots. The histogram is 100% on a single outcome — Bob has recovered the message with certainty.
6. To send 01, insert an X gate on q[0] after the barrier. Re-run and note the new single deterministic outcome.

   ```qasm
   h q[0];
   cx q[0], q[1];
   x q[0];
   cx q[0], q[1];
   h q[0];
   ```

7. To send 10, use a Z gate on q[0] instead of X. To send 11, use both Z and X (i.e. the Y encoding). Run each and record the outcome.

   ```qasm
   h q[0];
   cx q[0], q[1];
   z q[0];
   cx q[0], q[1];
   h q[0];
   ```

8. Tabulate the four encodings (I, X, Z, ZX) against the four measured outcomes and confirm the mapping is one-to-one.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Each of the four encodings produces a different, single, deterministic measurement outcome at 1024 shots. You can explain that Alice transmitted only ONE qubit yet conveyed TWO classical bits, because entanglement was shared in advance.

---

Full narrative walkthrough: **Learner Guide, Lab 9**.
