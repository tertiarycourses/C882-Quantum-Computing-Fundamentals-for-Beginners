# Lab 5 — Rotation and Phase Gates — RX, RY, RZ, S and T

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 2**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO2 — utilise quantum gates and logic to derive solutions

## Goal

Move beyond fixed gates to parameterised rotations. Sweep the angle of an RY gate on IBM Quantum Composer and watch the measurement probability change continuously — the basis of every variational quantum algorithm.

## What you'll build

A probability-vs-angle table for RY(theta) at theta = 0, pi/4, pi/2, 3pi/4 and pi, plus the S and T phase gates demonstrated.

## Step-by-step

1. Open a 1-qubit circuit with a Measure and place an RY gate on q[0].
2. Set theta = pi/2 and run 1024 shots. RY(pi/2) is equivalent to H up to phase, so you get approximately 50/50.

   ```qasm
   ry(pi/2) q[0];
   ```

3. Set theta = pi and run again. RY(pi) maps |0> to |1>, so the histogram is 100% |1>.

   ```qasm
   ry(pi) q[0];
   ```

4. Set theta = pi/4 and predict the split BEFORE running: P(0) = cos^2(theta/2) = cos^2(pi/8) which is about 85%. Run and confirm.

   ```qasm
   ry(pi/4) q[0];
   ```

5. Replace RY with RX(pi) and confirm it also produces |1> — the rotation axis differs but the endpoint here is the same up to phase.

   ```qasm
   rx(pi) q[0];
   ```

6. Build H then S then H, and run. The S gate is a 90-degree phase gate (P(pi/2)); sandwiched between Hadamards its phase becomes visible in the histogram.

   ```qasm
   h q[0];
   s q[0];
   h q[0];
   ```

7. Repeat with T (a 45-degree phase gate, P(pi/4)) in place of S, and compare the two histograms.

   ```qasm
   h q[0];
   t q[0];
   h q[0];
   ```


## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Your measured P(0) matches cos^2(theta/2) at each angle you tried, to within statistical noise at 1024 shots. You can explain why a phase gate only changes the histogram when it is placed between Hadamards.

---

Full narrative walkthrough: **Learner Guide, Lab 5**.
