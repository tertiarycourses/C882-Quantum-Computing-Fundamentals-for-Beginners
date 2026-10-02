// Lab 17 — Introduction to Quantum Machine Learning
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
ry(pi/4) q[0];
ry(pi/3) q[1];
