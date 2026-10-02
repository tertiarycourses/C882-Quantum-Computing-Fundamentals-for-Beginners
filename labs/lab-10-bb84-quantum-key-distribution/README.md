# Lab 10 — BB84 Quantum Key Distribution

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 3**  ·  **Platform:** IBM Quantum Composer  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO3 — perform coding and conduct testing of quantum algorithms

## Goal

Simulate the BB84 key-exchange protocol on IBM Quantum Composer. Encode bits in randomly chosen bases, measure in randomly chosen bases, sift the key — then introduce an eavesdropper and watch the error rate expose her.

## What you'll build

A sifted BB84 key produced without eavesdropping, and the elevated error rate produced when Eve intercepts.

## Step-by-step

1. Understand the encoding: Alice sends bit 0 as |0> or |+>, and bit 1 as |1> or |->, choosing the Z or X basis at random for each qubit.
2. On a 1-qubit circuit, prepare bit 1 in the X basis: X then H, giving the state |->.

   ```qasm
   x q[0];
   h q[0];
   ```

3. Bob measures in the X basis by applying H before the Measure. Run 1024 shots — he recovers bit 1 with certainty because the bases matched.

   ```qasm
   x q[0];
   h q[0];
   h q[0];
   measure q[0] -> c[0];
   ```

4. Now let Bob measure in the WRONG basis: remove his H so he measures in Z. Run again — the result is 50/50 random, so this bit is useless and gets discarded during sifting.

   ```qasm
   x q[0];
   h q[0];
   measure q[0] -> c[0];
   ```

5. Repeat for at least 8 qubits with a random basis choice for Alice and for Bob. Record Alice's bit, Alice's basis, Bob's basis and Bob's result in a table.
6. Sift the key: keep only the positions where Alice's and Bob's bases matched, and discard the rest. The retained bits are the shared secret key, and they should agree perfectly.
7. Now insert Eve. Between Alice and Bob, add an H followed by a Measure (Eve measuring in the X basis), then let the qubit continue to Bob.

   ```qasm
   x q[0];
   h q[0];
   measure q[0] -> c[0];
   h q[0];
   measure q[0] -> c[1];
   ```

8. Re-run the matched-basis cases with Eve present. Roughly 25% of the sifted bits now disagree — the error rate that reveals the eavesdropper.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

Without Eve, every matched-basis bit agrees between Alice and Bob. With Eve intercepting, about a quarter of the sifted bits disagree. You can explain why the no-cloning theorem makes this detection unavoidable for an eavesdropper.

---

Full narrative walkthrough: **Learner Guide, Lab 10**.
