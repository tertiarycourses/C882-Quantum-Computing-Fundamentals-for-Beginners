// Lab 10 — BB84 Quantum Key Distribution
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[2];
x q[0];
h q[0];
measure q[0] -> c[0];
h q[0];
measure q[0] -> c[1];
