# C882 Quantum Computing Course — PennyLane Supplementary

Sample codes for the [Quantum Computing Fundamentals for Beginners](https://www.tertiarycourses.com.sg/quantum-computing-fundamentals-for-beginners.html) course by [Tertiary Courses Singapore](https://www.tertiarycourses.com.sg/).

This course introduces participants to quantum computing fundamentals, covering quantum mechanics principles and their practical applications using PennyLane.

## Course Details

- **Duration**: 2 days
- **Delivery**: Physical classroom or virtual class via Zoom
- **Certification**: Certificate of Completion

## Topics Covered

### Topic 1: Quantum Physics Fundamentals
- Hermitian Matrices
- Unitary Matrices
- Eigenvalues and Eigenvectors
- Born Rules
- Tensor Products (States and Operators)
- Density Matrix (Pure and Mixed States)

### Topic 3: Quantum Gates and Circuits

**Single Qubit System**
- Pauli X, Y, Z Gates
- Hadamard Gate and Superposition
- Rotation Gates
- Phase Gate

**Multi Qubit System**
- CNOT Gate and Entanglement
- Bell State
- GHZ State
- CZ Gate
- Swap Gate
- Toffoli (CCNOT) Gate

**Measurements**
- Sample Measurement
- Count Measurement
- Probability Measurement
- Expectation Value Measurement

## Requirements

- Python >= 3.13
- PennyLane >= 0.44.0
- NumPy >= 2.4.1
- SciPy >= 1.17.0
- Matplotlib >= 3.10.8

## Installation

```bash
# Clone the repository
git clone https://github.com/tertiarycourses/C882-Quantum-Computing-Fundamentals-for-Beginners.git
cd C882-Quantum-Computing-Fundamentals-for-Beginners/labs/pennylane-supplementary

# Install dependencies using uv
uv sync
```

## Usage

Open `sample_codes.ipynb` in Jupyter Notebook or JupyterLab to explore the course materials and run the quantum computing examples.

```bash
uv run jupyter notebook sample_codes.ipynb
```
