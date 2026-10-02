// Lab 12 — The Bernstein-Vazirani Algorithm
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];
x q[4];
h q[4];
h q[0];
h q[1];
h q[2];
h q[3];
cx q[0], q[4];
cx q[1], q[4];
cx q[3], q[4];
h q[0];
h q[1];
h q[2];
h q[3];
