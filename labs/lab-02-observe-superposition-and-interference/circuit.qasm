// Lab 2 — Observe Superposition and Interference
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];
h q[0];
h q[0];
measure q[0] -> c[0];
