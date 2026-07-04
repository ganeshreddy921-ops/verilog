 Vowel Filter Using Verilog

## Overview

This project implements a combinational Verilog circuit that filters vowels from an 8-character ASCII input string. All consonants are shifted to the left while the removed vowels are replaced with underscores (`_`) at the end of the output.

The design ensures that the relative order of consonants is preserved.

---

## Problem Statement

Design a Verilog circuit that:

- Accepts eight 8-bit ASCII characters as input.
- Identifies vowels (`A`, `E`, `I`, `O`, `U`).
- Removes all vowels from the input.
- Shifts all remaining consonants to the left.
- Fills the remaining output positions with underscores (`_`).

---

## Example

### Input

```
SRINIVAS
```

### Output

```
SRNVS___
```

**Correct Output**

```
SRNVS___
```

**Incorrect Output**

```
SR_N_V_S
```

The circuit must shift the consonants together rather than simply replacing vowels in their original positions.

---

## Input Format

- Eight ASCII characters
- Each input is 8 bits wide

```
input [7:0] i1, i2, i3, i4, i5, i6, i7, i8;
```

---

## Output Format

```
output [7:0] y1, y2, y3, y4, y5, y6, y7, y8;
```

---

## Design Approach

The design is implemented using a hierarchical structural approach.

### Modules Used

- `main`
  - Top-level module
- `vowelfilter`
  - Detects vowels and marks them for removal
- `remove_`
  - Removes one vowel and shifts the remaining characters left

The `remove_t` module is instantiated multiple times to progressively move all vowels to the end of the string.

---

## Concepts Demonstrated

- Verilog HDL
- Structural Modeling
- Module Instantiation
- Hierarchical Design
- ASCII Character Processing
- Combinational Logic
- Data Manipulation
- String Processing in Hardware

---



## Learning Outcome

This project demonstrates how complex string-processing operations can be implemented using structural Verilog by combining multiple reusable modules. It also highlights hierarchical design, module instantiation, and combinational data manipulation techniques commonly used in RTL design.
