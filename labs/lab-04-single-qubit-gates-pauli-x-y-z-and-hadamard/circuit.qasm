// Lab 4 — Single-Qubit Gates — Pauli X, Y, Z and Hadamard
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];
h q[0];
z q[0];
