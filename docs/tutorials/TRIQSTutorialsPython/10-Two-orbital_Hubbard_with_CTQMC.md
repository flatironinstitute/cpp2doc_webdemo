Two-orbital Hubbard model
=========================

You will generalize the previous study to a two-orbital problem.
We will still focus on a Bethe lattice so that the DMFT self-consistency is simple. For the interaction
Hamiltonian, we will consider the Hubbard-Kanamori model for two bands. The Hamiltonian consists of density-density, spin-flip and pair-hopping terms:

$$
  H_{HK} =          U \sum_{i} n_{i \uparrow} n_{i \downarrow}
             + (U-2J) \sum_{i \neq i'} n_{i \uparrow} n_{i' \downarrow}
             + (U-3J) \sum_{i < i', \sigma} n_{i \sigma} n_{i' \sigma} 
             - J \sum_{i \neq i'} a^\dagger_{i \uparrow} a_{i \downarrow} a^\dagger_{i' \downarrow} a_{i' \uparrow}
             + J \sum_{i \neq i'} a^\dagger_{i \uparrow} a^\dagger_{i \downarrow} a_{i' \downarrow} a_{i' \uparrow},
$$

For this problem, the DMFT self-consistency still reads

$$
{\cal G}_{0 i \sigma}^{-1} (i\omega_n) = i\omega_n + \mu - t^2 G_{i \sigma} (i\omega_n)
$$

Note that the Green's functions are diagonal in spin and orbital indices.



Exercise 1
----------

Modify the script for the single-band Hubbard model to work here. We will be interested in the half- and quarter-filled cases, for which the respective chemical potentials are:

$\mu_{\rm half} = 0.5 U + 0.5 (U-2J) + 0.5 (U-3J)$

$\mu_{\rm quarter} = -0.81 + (0.6899 - 1.1099 \, J/U) U + (-0.02548 + 0.02709 \, J/U -0.1606 \, (J/U)^2) U^2$

If you are stuck or short on time, take a sneak peek at the solution below. 
Note that there is a variable `filling` that can be set either to `half` or to 
`quarter` and that defines the filling of the problem. 

**Warning**: don't run the script, the calculations are quite long! It is just here for illustration purposes.


```python
# %load run_two_bands.py
from pytriqs.gf import *
from pytriqs.operators import *
from pytriqs.archive import *
from triqs_cthyb import Solver
from itertools import product
import numpy as np

import os
if not os.path.exists('results_two_bands'):
    os.makedirs('results_two_bands')

# Parameters of the model
t = 1.0
beta = 10.0
n_loops = 10
filling = 'half' # or 'quarter'
n_orbitals = 2

# Construct the solver
S = Solver(beta = beta, gf_struct = [('up-0',[0]), ('up-1',[0]), ('down-0',[0]), ('down-1',[0])] )

for coeff in [0.0, 0.1, 0.2]:

    # Run for several values of U
    for U in np.arange(1.0, 13.0, 1.0):

        J = coeff * U

        # Expression of mu for half and quarter filling
        if filling == 'half':
            mu = 0.5*U + 0.5*(U-2*J) + 0.5*(U-3*J)
        elif filling == 'quarter':
            mu = -0.81 + (0.6899-1.1099*coeff)*U + (-0.02548+0.02709*coeff-0.1606*coeff**2)*U**2

        # Set the interacting Kanamori hamiltonian
        h_int = Operator()
        for o in range(0,n_orbitals):
            h_int += U*n('up-%s'%o,0)*n('down-%s'%o,0)
        for o1,o2 in product(range(0,n_orbitals),range(0,n_orbitals)):
            if o1==o2: continue
            h_int += (U-2*J)*n('up-%s'%o1,0)*n('down-%s'%o2,0)
        for o1,o2 in product(range(0,n_orbitals),range(0,n_orbitals)):
            if o2>=o1: continue;
            h_int += (U-3*J)*n('up-%s'%o1,0)*n('up-%s'%o2,0)
            h_int += (U-3*J)*n('down-%s'%o1,0)*n('down-%s'%o2,0)
        for o1,o2 in product(range(0,n_orbitals),range(0,n_orbitals)):
            if o1==o2: continue
            h_int += -J*c_dag('up-%s'%o1,0)*c_dag('down-%s'%o1,0)*c('up-%s'%o2,0)*c('down-%s'%o2,0)
            h_int += -J*c_dag('up-%s'%o1,0)*c_dag('down-%s'%o2,0)*c('up-%s'%o2,0)*c('down-%s'%o1,0)

        # This is a first guess for G
        S.G0_iw << inverse(iOmega_n + mu - t**2 * SemiCircular(2*t))

        # DMFT loop with self-consistency
        for i in range(n_loops):

            print "\n\nIteration = %i / %i" % (i+1, n_loops)

            # Symmetrize the Green's function and use self-consistency
            if i > 0:
                g = 0.25 * ( S.G_iw['up-0'] + S.G_iw['up-1'] + S.G_iw['down-0'] + S.G_iw['down-1'] )
                for name, g0 in S.G0_iw:
                    g0 << inverse(iOmega_n + mu - t**2 * g)

            # Solve the impurity problem
            S.solve(h_int = h_int,
                    n_cycles  = 30000,
                    length_cycle = 100,
                    n_warmup_cycles = 5000)

            # Check density
            for name, g in S.G_iw:
                print name, ": ",g.density()[0,0].real

            # Save iteration in archive
            with HDFArchive("results_two_bands/%s-U%.2f-J%.2f.h5"%(filling,U,J)) as A:
                A['G-%i'%i] = S.G_iw
                A['Sigma-%i'%i] = S.Sigma_iw

```

For the following exercises, the calculations have already been performed for you, and the data is stored in the `results_two_bands` folder, see below. Use this data to perform the analysis below. Again, **do not run the script** on your machine! 


```python
!ls results_two_bands/
```

Exercise 2
----------

Start by studying the problem at half-filling. By varying $U$ find the critical $U_c$ for the Mott transition for different values of $J$. How does $U_c$ change with $J$? Hint: take the following values for $J/U = 0.0, 0.1, 0.2$ and values of $U/t$ between 1 and 12.

Exercise 3
----------

Do the same study as in Exercise 1, but at quarter-filling. How does $U_c$ change with $J$? Take again values of $J/U = 0.0, 0.1, 0.2$ and values of $U/t$ between 1 and 12.
