# Lab 16 — Simulator vs Real Quantum Hardware

**Course:** Quantum Computing Fundamentals for Beginners (C882)  
**Topic 4**  ·  **Platform:** IBM Quantum Composer, IBM Quantum Platform  ·  [https://quantum.cloud.ibm.com/composer](https://quantum.cloud.ibm.com/composer)

**Learning outcome:** LO4 — diagnose unintended outcomes and propose changes

## Goal

Run the same circuit on the ideal simulator and on real IBM quantum hardware, compare the histograms, and diagnose the difference.

## What you'll build

A side-by-side comparison of the Bell-state histogram on the simulator and on real hardware, with the error sources identified.

## Step-by-step

1. Rebuild the Bell-state circuit from Lab 3: H on q[0], CNOT(q[0], q[1]), measure both.

   ```qasm
   h q[0];
   cx q[0], q[1];
   measure q[0] -> c[0];
   measure q[1] -> c[1];
   ```

2. Run it on the SIMULATOR with 1024 shots and record the exact counts. You should see only |00> and |11>, each near 512.
3. Switch the backend to a real IBM quantum device from the backend selector, and submit the same circuit with 1024 shots.
4. Wait for the job to complete in the queue, then open the results and record the counts for all four outcomes.
5. Compare: the hardware histogram still peaks at |00> and |11>, but now |01> and |10> have non-zero counts — these are errors that are impossible in theory.
6. Identify the error sources: decoherence (T1 energy relaxation and T2 dephasing), imperfect two-qubit gate fidelity, readout/measurement error, and crosstalk between neighbouring qubits.
7. Open the backend's calibration data on the IBM Quantum Platform and note the reported CNOT error rate, readout error and T1/T2 times for the qubits you used.
8. Propose mitigations: use fewer gates and shallower circuits, pick qubits with the best calibration, increase shot counts, apply readout-error mitigation, and ultimately use quantum error correction.

## Full circuit

The complete OpenQASM listing is in [`circuit.qasm`](circuit.qasm). Paste it into the OpenQASM editor in IBM Quantum Composer and the canvas will draw the circuit for you.

## Test it

You can quantify the discrepancy (the percentage of shots landing in the forbidden |01> and |10> states on hardware) and name at least three physical causes plus three practical mitigations.

---

Full narrative walkthrough: **Learner Guide, Lab 16**.
