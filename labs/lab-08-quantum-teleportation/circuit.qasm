// Lab 8 — Quantum Teleportation
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
h q[1];
cx q[1], q[2];
