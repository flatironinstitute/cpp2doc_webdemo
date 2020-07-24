---
title: Fermionic Operators
parent: Tutorials
layout: default
nav_include: true
permalink: /tutorials/operators/
---


Manipulating fermionic operators
================================

Before we see how to use a CTQMC impurity solver, it will be useful to learn about operators. Indeed, one of the
inputs of the CTQMC solver is a Hamiltonian in operator form.

Fundamental operators
---------------------

After importing the operator module, the keyword `c_dag` and `c` allow to define a new fermionic
operator. `c_dag` and `c` are followed by two indices. Inspired by the block structure of Green's functions,
the first index is a block index, while the second is the index within the block. Here's an example
of operators as they would be defined if we had two blocks *up* and *down* of size 1:


```python
from pytriqs.operators import c, c_dag, n, Operator # n and Operator will be needed later
print c_dag('up',0)
print c('up',0)
print c_dag('down',0)
print c('down',0)
```

Number operator
---------------

The keyword `n` is defined as $C^\dagger C$


```python
print n('up',0)
```

Operations with operators
-------------------------

Operators can be manipulated and anti-commutation relations will be used to simplify
expressions


```python
# Should give 0
print n('up',0) - c_dag('up',0)*c('up',0)
```


```python
# Some calculation
print n('up',0) - 2 * c_dag('up',0)*c('up',0)
```


```python
# Define the parameters
U = 4
mu = 3

# H is an empty operator
H = Operator()

# Add elements to define a Hamiltonian
H += U * n('up',0) * n('down',0)
H -= mu * (n('up',0) + n('down',0))
print H
```
