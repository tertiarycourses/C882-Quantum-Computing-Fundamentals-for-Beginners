// Lab 14 — Quantum Error Correction — The Bit-Flip Code
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
x q[1];
cx q[0], q[2];
cx q[0], q[1];
h q[0];
measure q[0] -> c[2];
