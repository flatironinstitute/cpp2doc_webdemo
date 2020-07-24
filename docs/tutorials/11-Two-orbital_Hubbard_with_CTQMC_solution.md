---
title: Two-orbital Hubbard Model Solution
parent: Tutorials
layout: default
nav_include: true
permalink: /tutorials/twoorbitalhubbardmodelsolution/
---


```python
from pytriqs.gf import *
from pytriqs.archive import *
from pytriqs.plot.mpl_interface import *
import numpy as np
%matplotlib inline
import matplotlib as mpl
mpl.rcParams['savefig.dpi']=100
plt.rcParams['figure.figsize'] = (8.0,6.0)
```

Solution of the exercises
=========================

Solution of exercise 1
----------------------

The script below solves the two-orbital Hubbard model for a variety of filling, $U$ and $J$.


```python
%load run_two_bands.py
```

Solution of exercise 2
----------------------

The solution of the exercise is in the script called `run_two_bands.py` in the tutorial directory.
The script was run from the shell to see the Monte Carlo progress. As you can see in the script, the Green's functions and self-energies are saved in archives. These archives are in the `results_two_bands` subdirectory. Here is a plot of
the Green's functions for different values of $U$ at given $J$'s.

### J = 0.0

You will see that the Mott transition is somewhere between 6.0 and 7.0.


```python
coeff = 0.0
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/half-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### J = 0.1 U

You will see that the Mott transition is somewhere between 4.0 and 5.0.


```python
coeff = 0.1
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/half-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### J = 0.2 U

You will see that the Mott transition is somewhere between 3.0 and 4.0.


```python
coeff = 0.2
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/half-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### Conclusion of Exercise 2

The value of $U_c$ is decreasing with increasing values of $J$! Can you understand why?

Solution of exercise 3
----------------------

The solution of the exercise is again the script called `run_two_bands.py` in the tutorial directory.
You will have to change `filling = 'quarter'`. The generated archives are in the `results` subdirectory. Here is a plot of
the Green's functions for different values of $U$ at given $J$'s.

### J = 0.0

You will se that the Mott transition is somewhere between 5.0 and 6.0.


```python
coeff = 0.0
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/quarter-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### J = 0.1 U

You will see that the Mott transition is somewhere between 7.0 and 8.0.


```python
coeff = 0.1
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/quarter-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### J = 0.2 U

You will see that the Mott transition happens at values of $U$ larger than 12.


```python
coeff = 0.2
for U in np.arange(1.0, 13.0):

    J = coeff * U
    A = HDFArchive("results_two_bands/quarter-U%.2f-J%.2f.h5"%(U,J), 'r')
    oplot(A['G-9']['up-0'].imag, 'o', name="U = %.2f"%U)

plt.xlim(0,10)
```

### Conclusion of Exercise 3

Now the value of $U_c$ is increasing with increasing values of $J$! Why?
