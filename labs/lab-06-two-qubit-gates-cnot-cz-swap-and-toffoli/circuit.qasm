// Lab 6 — Two-Qubit Gates — CNOT, CZ, SWAP and Toffoli
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
x q[0];
h q[1];
cz q[0], q[1];
h q[1];
