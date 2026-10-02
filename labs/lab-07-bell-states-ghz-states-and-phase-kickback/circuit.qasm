// Lab 7 — Bell States, GHZ States and Phase Kickback
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
x q[1];
h q[0];
h q[1];
cx q[0], q[1];
h q[0];
