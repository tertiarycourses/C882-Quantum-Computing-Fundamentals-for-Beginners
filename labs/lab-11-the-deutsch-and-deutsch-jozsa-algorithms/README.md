# Lab 11 — The Deutsch and Deutsch-Jozsa Algorithms

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Build the first algorithm that beats every classical method. Determine whether a black-box function is constant or balanced using a single query on IBM Quantum Composer, then scale it up to the multi-qubit Deutsch-Jozsa version.

## What you'll build

Four Deutsch circuits (both constant and both balanced oracles) and a 3-qubit Deutsch-Jozsa circuit.

## Step-by-step

1. Open a 2-qubit circuit. Set up the input register: X on q[1] to make it |1>, then H on both qubits.

   ```qasm
   x q[1];
   h q[0];
   h q[1];
   ```

2. Add a barrier, then build the BALANCED oracle f(x) = x as a single CNOT with control q[0] and target q[1].

   ```qasm
   cx q[0], q[1];
   ```

3. Add a barrier, apply H to q[0], and measure q[0] only.

   ```qasm
   h q[0];
   measure q[0] -> c[0];
   ```

4. Run 1024 shots. The result is 100% |1>, which is the algorithm's verdict: the function is BALANCED.
5. Replace the oracle with the CONSTANT function f(x) = 0 — an empty oracle with no gates at all. Re-run: the result is now 100% |0>, meaning CONSTANT.

   ```qasm
   x q[1];
   h q[0];
   h q[1];
   h q[0];
   measure q[0] -> c[0];
   ```

6. Try the other constant oracle f(x) = 1 (an X on q[1] inside the oracle) and the other balanced oracle f(x) = NOT x (CNOT then X on q[1]). Confirm the verdicts are 0 and 1 respectively.

   ```qasm
   x q[1];
   h q[0];
   h q[1];
   cx q[0], q[1];
   x q[1];
   h q[0];
   measure q[0] -> c[0];
   ```

7. Scale up to Deutsch-Jozsa on 4 qubits: H on q[0..2], X then H on q[3], a balanced oracle of CNOTs from each input to q[3], then H on q[0..2] and measure them.

   ```qasm
   x q[3];
   h q[0];
   h q[1];
   h q[2];
   h q[3];
   cx q[0], q[3];
   cx q[1], q[3];
   cx q[2], q[3];
   h q[0];
   h q[1];
   h q[2];
   ```

8. Run and read the histogram: any non-zero outcome means BALANCED, while an all-zeros outcome (000) would mean CONSTANT.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Both constant oracles measure all-zeros with certainty and both balanced oracles measure a non-zero result with certainty. You can state the speedup: one quantum query versus up to 2^(n-1)+1 classical queries.

---

Full narrative walkthrough: **Learner Guide, Lab 11**.
