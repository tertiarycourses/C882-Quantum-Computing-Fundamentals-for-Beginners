// Lab 3 — Create Your First Entangled Pair (Bell State)
// Quantum Computing Fundamentals for Beginners (C882)
// Platform: IBM Quantum Composer
// Paste this into the OpenQASM editor in IBM Quantum Composer.

OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
