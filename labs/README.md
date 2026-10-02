# Quantum Computing Fundamentals for Beginners — Hands-On Labs

**Course Code:** C882  ·  **Version v1.0**

All 17 labs run in your browser on **IBM Quantum Composer** — no installation, no cost.

## Before you start

1. Create a free IBM Quantum account at <https://quantum.ibm.com/>.
2. Open the Composer at <https://quantum.cloud.ibm.com/composer>.
3. Create a new circuit, set the qubit count, and drag gates onto the wires.
4. Or paste a lab's `circuit.qasm` straight into the OpenQASM editor.
5. Run on the **simulator** with **1024 shots** unless a lab says otherwise.

## Labs

### Topic 01 — Introduction to Quantum Computing

| Lab | Title | What you build |
|---|---|---|
| 1 | [Explore the Qubit on the Bloch Sphere](lab-01-explore-the-qubit-on-the-bloch-sphere/) | A worked set of Bloch-sphere states (|0>, |1>, |+>, |->) and the gates that produce them. |
| 2 | [Observe Superposition and Interference](lab-02-observe-superposition-and-interference/) | Two single-qubit circuits: H (a 50/50 random bit) and H-H (a deterministic 0), with their histograms. |
| 3 | [Create Your First Entangled Pair (Bell State)](lab-03-create-your-first-entangled-pair-bell-state/) | A 2-qubit Bell-state circuit whose histogram shows only |00> and |11>, each near 50%. |

### Topic 02 — Quantum States and Gates

| Lab | Title | What you build |
|---|---|---|
| 4 | [Single-Qubit Gates — Pauli X, Y, Z and Hadamard](lab-04-single-qubit-gates-pauli-x-y-z-and-hadamard/) | A gate reference table you fill in yourself: the output state and measurement probabilities for X, Y, Z and H on |0> and |1>. |
| 5 | [Rotation and Phase Gates — RX, RY, RZ, S and T](lab-05-rotation-and-phase-gates-rx-ry-rz-s-and-t/) | A probability-vs-angle table for RY(theta) at theta = 0, pi/4, pi/2, 3pi/4 and pi, plus the S and T phase gates demonstrated. |
| 6 | [Two-Qubit Gates — CNOT, CZ, SWAP and Toffoli](lab-06-two-qubit-gates-cnot-cz-swap-and-toffoli/) | Completed truth tables for CNOT, SWAP and Toffoli, plus a demonstration that CZ only applies a phase. |
| 7 | [Bell States, GHZ States and Phase Kickback](lab-07-bell-states-ghz-states-and-phase-kickback/) | The four Bell states, a GHZ state, and a phase-kickback circuit showing the phase moving onto the control qubit. |

### Topic 03 — Quantum Algorithms

| Lab | Title | What you build |
|---|---|---|
| 8 | [Quantum Teleportation](lab-08-quantum-teleportation/) | A 3-qubit teleportation circuit that moves a |+> state from q[0] to q[2] and verifies the transfer. |
| 9 | [Superdense Coding](lab-09-superdense-coding/) | Four superdense-coding circuits, one per two-bit message, each decoding deterministically. |
| 10 | [BB84 Quantum Key Distribution](lab-10-bb84-quantum-key-distribution/) | A sifted BB84 key produced without eavesdropping, and the elevated error rate produced when Eve intercepts. |
| 11 | [The Deutsch and Deutsch-Jozsa Algorithms](lab-11-the-deutsch-and-deutsch-jozsa-algorithms/) | Four Deutsch circuits (both constant and both balanced oracles) and a 3-qubit Deutsch-Jozsa circuit. |
| 12 | [The Bernstein-Vazirani Algorithm](lab-12-the-bernstein-vazirani-algorithm/) | A 5-qubit Bernstein-Vazirani circuit that reads out the hidden string 0101 deterministically. |
| 13 | [Grover's Search Algorithm](lab-13-grover-s-search-algorithm/) | A 2-qubit Grover circuit that finds the marked item with near-certainty, plus a 3-qubit version. |

### Topic 04 — Quantum Computing Applications

| Lab | Title | What you build |
|---|---|---|
| 14 | [Quantum Error Correction — The Bit-Flip Code](lab-14-quantum-error-correction-the-bit-flip-code/) | A 3-qubit bit-flip code that detects and corrects an injected X error on any one of the three qubits. |
| 15 | [Quantum Error Correction — The Phase-Flip Code](lab-15-quantum-error-correction-the-phase-flip-code/) | A 3-qubit phase-flip code that detects and corrects an injected Z error. |
| 16 | [Simulator vs Real Quantum Hardware](lab-16-simulator-vs-real-quantum-hardware/) | A side-by-side comparison of the Bell-state histogram on the simulator and on real hardware, with the error sources identified. |
| 17 | [Introduction to Quantum Machine Learning](lab-17-introduction-to-quantum-machine-learning/) | A 2-qubit variational ansatz whose rotation angles you tune to steer the output distribution towards a target. |

## Learning outcomes

- LO1: Identify and use appropriate quantum computing platforms for testing quantum gates and algorithms
- LO2: Utilise and conduct quantum gates and logic to derive solutions
- LO3: Perform coding and conduct testing of quantum algorithms
- LO4: Diagnose outcomes, propose, and implement changes for quantum computing applications

---

© 2026 Tertiary Infotech Academy Pte Ltd. All rights reserved.  ·  <https://www.tertiarycourses.com.sg>
