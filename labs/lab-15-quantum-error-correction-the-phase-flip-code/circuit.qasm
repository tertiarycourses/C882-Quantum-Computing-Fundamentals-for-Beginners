// Lab 15 — Quantum Error Correction — The Phase-Flip Code
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
cx q[0], q[1];
cx q[0], q[2];
h q[0];
h q[1];
h q[2];
