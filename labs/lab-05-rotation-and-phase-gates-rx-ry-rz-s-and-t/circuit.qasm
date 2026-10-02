// Lab 5 — Rotation and Phase Gates — RX, RY, RZ, S and T
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];
h q[0];
s q[0];
h q[0];
