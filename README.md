# Quantum Computing Fundamentals for Beginners

A hands-on, 2-day beginner course in quantum computing — qubits, gates, entanglement, the classic
quantum algorithms and error correction — built and run entirely in the browser on IBM Quantum Composer.

| Course detail | Information |
|---|---|
| Course code | `C882` |
| Programme | Non-WSQ |
| Duration | 2 days · 15 instructional hours (9:30am – 5:30pm daily) |
| Registration | [View course details and register](https://www.tertiarycourses.com.sg/quantum-computing-fundamentals-for-beginners.html) |
| Provider | Tertiary Infotech Academy Pte Ltd (UEN 201200696W) |

## About the course

Quantum computing replaces the classical bit with the qubit, which can hold a superposition of 0 and 1
and become entangled with other qubits. This course takes complete beginners from the Bloch sphere to
working quantum algorithms. Every concept is followed immediately by a circuit you build yourself on
**[IBM Quantum Composer](https://quantum.cloud.ibm.com/composer)** — no installation, no cost, and no
prior physics or programming background required.

## Learning outcomes

| | |
|---|---|
| **LO1** | Identify and use appropriate quantum computing platforms for testing quantum gates and algorithms |
| **LO2** | Utilise and conduct quantum gates and logic to derive solutions |
| **LO3** | Perform coding and conduct testing of quantum algorithms |
| **LO4** | Diagnose outcomes, propose, and implement changes for quantum computing applications |

## Topics covered

| Topic | Sub-topics | Labs |
|---|---|---|
| **1 — Introduction to Quantum Computing** | Key principles of quantum computing; quantum computing platforms | 1–3 |
| **2 — Quantum States and Gates** | Quantum state vector representations; quantum circuits and quantum gates | 4–7 |
| **3 — Quantum Algorithms** | Coding quantum algorithms; testing quantum algorithms | 8–13 |
| **4 — Quantum Computing Applications** | Introduction to quantum error correction; introduction to quantum machine learning | 14–17 |

## Labs

All 17 labs are in [`labs/`](labs/), each with a `README.md` and a ready-to-paste `circuit.qasm`.

| # | Lab | Topic |
|---|---|---|
| 1 | [Explore the Qubit on the Bloch Sphere](labs/lab-01-explore-the-qubit-on-the-bloch-sphere/) | 1 |
| 2 | [Observe Superposition and Interference](labs/lab-02-observe-superposition-and-interference/) | 1 |
| 3 | [Create Your First Entangled Pair (Bell State)](labs/lab-03-create-your-first-entangled-pair-bell-state/) | 1 |
| 4 | [Single-Qubit Gates — Pauli X, Y, Z and Hadamard](labs/lab-04-single-qubit-gates-pauli-x-y-z-and-hadamard/) | 2 |
| 5 | [Rotation and Phase Gates — RX, RY, RZ, S and T](labs/lab-05-rotation-and-phase-gates-rx-ry-rz-s-and-t/) | 2 |
| 6 | [Two-Qubit Gates — CNOT, CZ, SWAP and Toffoli](labs/lab-06-two-qubit-gates-cnot-cz-swap-and-toffoli/) | 2 |
| 7 | [Bell States, GHZ States and Phase Kickback](labs/lab-07-bell-states-ghz-states-and-phase-kickback/) | 2 |
| 8 | [Quantum Teleportation](labs/lab-08-quantum-teleportation/) | 3 |
| 9 | [Superdense Coding](labs/lab-09-superdense-coding/) | 3 |
| 10 | [BB84 Quantum Key Distribution](labs/lab-10-bb84-quantum-key-distribution/) | 3 |
| 11 | [The Deutsch and Deutsch-Jozsa Algorithms](labs/lab-11-the-deutsch-and-deutsch-jozsa-algorithms/) | 3 |
| 12 | [The Bernstein-Vazirani Algorithm](labs/lab-12-the-bernstein-vazirani-algorithm/) | 3 |
| 13 | [Grover's Search Algorithm](labs/lab-13-grover-s-search-algorithm/) | 3 |
| 14 | [Quantum Error Correction — The Bit-Flip Code](labs/lab-14-quantum-error-correction-the-bit-flip-code/) | 4 |
| 15 | [Quantum Error Correction — The Phase-Flip Code](labs/lab-15-quantum-error-correction-the-phase-flip-code/) | 4 |
| 16 | [Simulator vs Real Quantum Hardware](labs/lab-16-simulator-vs-real-quantum-hardware/) | 4 |
| 17 | [Introduction to Quantum Machine Learning](labs/lab-17-introduction-to-quantum-machine-learning/) | 4 |

An optional [PennyLane/Python notebook](labs/pennylane-supplementary/) is included for learners who want
to go further after class; it is not used in the classroom labs.

To run a lab: create a free IBM Quantum account at <https://quantum.ibm.com/>, open the
[Composer](https://quantum.cloud.ibm.com/composer), then drag the gates onto the wires or paste the
lab's `circuit.qasm` into the OpenQASM editor. Run on the simulator with 1024 shots (only Lab 16 needs
real hardware).

## Courseware package (v1.0)

| Artifact | Files |
|---|---|
| Slide deck (95 slides) | [PPTX](<courseware/Quantum Computing Fundamentals for Beginners (C882)-v1.0.pptx>) · [PDF](<courseware/Quantum Computing Fundamentals for Beginners (C882)-v1.0.pdf>) |
| Lesson Plan | [DOCX](<courseware/LP-Quantum Computing Fundamentals for Beginners (C882).docx>) · [PDF](<courseware/LP-Quantum Computing Fundamentals for Beginners (C882).pdf>) |
| Learner Guide | [DOCX](<courseware/LG-Quantum Computing Fundamentals for Beginners (C882).docx>) · [PDF](<courseware/LG-Quantum Computing Fundamentals for Beginners (C882).pdf>) · [Markdown](<LG-Quantum Computing Fundamentals for Beginners (C882).md>) |
| Labs | [`labs/`](labs/) |

## Distribution

This repository publishes the learner-facing courseware: slides, Lesson Plan, Learner Guide and labs.
Source reference material is kept private and is not part of this repository.

## Support

**Email:** enquiry@tertiaryinfotech.com  ·  **Tel:** +65 6100 0613
**LMS/TMS:** <https://lms-tms.tertiaryinfotech.com>  ·  **Web:** <https://www.tertiarycourses.com.sg>

---

© 2026 Tertiary Infotech Academy Pte Ltd. All rights reserved.
