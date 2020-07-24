```python
%matplotlib inline
import numpy as np
from math import pi
from pytriqs.gf import *
from pytriqs.archive import *
from pytriqs.plot.mpl_interface import plt,oplot
import matplotlib as mpl
mpl.rcParams['savefig.dpi']=100 
```

Solution of the exercises
=========================

Solution of exercise 1
----------------------

The solution of this exercise is in the script called `run_single_band.py` in the tutorial directory. View it by executing the command below. 


```python
# %load run_single_band.py
from pytriqs.gf import *
from pytriqs.operators import *
from pytriqs.archive import *
from triqs_cthyb import Solver
import numpy as np

import os
if not os.path.exists('results_one_band'):
    os.makedirs('results_one_band')

# Parameters of the model
t = 1.0
beta = 10.0
n_loops = 10

# Construct the impurity solver
S = Solver(beta = beta, gf_struct = [('up',[0]), ('down',[0])] )

# I run for several values of U
for U in np.arange(1.0, 13.0):
    print 'U =', U

    # This is a first guess for G
    S.G_iw << SemiCircular(2*t)

    # DMFT loop with self-consistency
    for i in range(n_loops):
    
        print "\n\nIteration = %i / %i" % (i+1, n_loops)
    
        # Symmetrize the Green's function and use self-consistency
        g = 0.5 * ( S.G_iw['up'] + S.G_iw['down'] )
        for name, g0 in S.G0_iw:
            g0 << inverse( iOmega_n + U/2.0 - t**2 * g )

        # Solve the impurity problem
        S.solve(h_int = U * n('up',0) * n('down',0),   # Local Hamiltonian 
            n_cycles  = 10000,                           # Number of QMC cycles
            n_warmup_cycles = 5000,                      # Warmup cycles
            )
    
        # Save iteration in archive
        with HDFArchive("results_one_band/half-U%.2f.h5"%U) as A:
            A['G-%i'%i] = S.G_iw
            A['Sigma-%i'%i] = S.Sigma_iw

```

The script saves the Green's functions and self-energies in archives in the subdirectory called `results`. They will be used for the analysis below. We study several values of $U$ to see how the Green's functions will change. Note that these runs takes a bit of time!

You can

- run this directly from the shell to see the Monte Carlo progress or 
- run the command below.


```python
%run run_single_band.py
```

Solution of exercise 2
----------------------

Start by reading the data from the archive and plot it.


```python
A1 = HDFArchive("results_one_band/half-U2.00.h5", 'r')
A2 = HDFArchive("results_one_band/half-U6.00.h5", 'r')

# Plot the Green's function of the last iteration
oplot(A1['G-9']['up'], 'x', label='U = 2.0')
oplot(A2['G-9']['down'], 'o', label='U = 6.0')

plt.xlim(0,10)
```

As you can see, the behavior of the imaginary part is very different for the two values of $U$. When
$U$ is small, the system is a metal and the imaginary part extrapolated to zero goes to a finite value.
Instead, for large $U$, the system is a Mott insulator and the imaginary part goes to zero. The reason
is that the extrapolation to zero is directly proportional to the density of states at the chemical
potential. If the system is gapped, the density is zero; if the system is a metal, there is spectral
weight and the density is finite. Therefore, even on the Matsubara axis, one has a way to decide if the
system is metallic or not.

Solution of exercise 3
----------------------

We now do the same for the self-energy.


```python
A1 = HDFArchive("results_one_band/half-U2.00.h5", 'r')
A2 = HDFArchive("results_one_band/half-U6.00.h5", 'r')

# Plot the self-energy of the last iteration
oplot(A1['Sigma-9']['up'].imag, 'x', name='U = 2.0')
oplot(A2['Sigma-9']['up'].imag, 'o', name='U = 6.0')

plt.xlim(0,5)
plt.ylim(-30,0)
```

Here the extrapolation to zero goes to zero for the metal and diverges in the insulator. In general, we expect that the
self-energy goes to zero linearly at small frequencies in a Fermi-liquid metal. As we will see below, the slope
tells something about the degree of correlation. In the Mott insulator, a gap open because of the development of a
pole in the self-energy. The manifestation of this pole is a diverging imaginary part of the self-energy a low frequencies
as is visible here.

Solution of exercise 4
----------------------

We estimate the derivative using the following approximation

$$
Z = \lim_{\omega_n \rightarrow 0} \Big( 1 - \frac{d\mathrm{Im} \Sigma(i\omega_n)}{di\omega_n} \Big)^{-1}
  \sim \Big( 1 - \frac{\mathrm{Im} \Sigma(i\omega_0)}{i\omega_0} \Big)^{-1}
$$

with $\omega_0 = \pi / \beta$ being the first Matsubara frequency.


```python
beta = 10
U_list = []
Z_list = []

for U in np.arange(1.0, 9.0):
    
    A = HDFArchive("results_one_band/half-U%.2f.h5"%U, 'r')
    Sigma = A['Sigma-9']
    
    Z = 1 / (1 - (Sigma['up'](0)[0,0].imag * beta / np.pi))
    U_list.append(U)
    Z_list.append(Z)
    
plt.plot(U_list, Z_list, '-o')
plt.xlabel('U')
plt.ylabel('Z')
```

Solution of exercise 5
----------------------

This is just the same script as we had earlier. We just add a couple of lines to extract $Z$.


```python
from pytriqs.gf import *
from pytriqs.plot.mpl_interface import *

class IPTSolver:

    def __init__(self, beta):

        self.beta = beta

        # Matsubara frequency
        self.g = GfImFreq(indices=[0], beta=beta, name='0')
        self.g0 = self.g.copy()
        self.sigma = self.g.copy()
        
        # Imaginary time
        self.g0t = GfImTime(indices=[0], beta = self.beta, name='G0t')
        self.sigmat = self.g0t.copy()
        
    def solve(self, U):

        self.g0t << InverseFourier(self.g0)
        self.sigmat << (U**2) * self.g0t * self.g0t * self.g0t
        self.sigma << Fourier(self.sigmat)

        # Dyson
        self.g << self.g0 * inverse(1.0 - self.sigma * self.g0)
        

t = 1.0
beta = 10
n_loops = 30

S = IPTSolver(beta = beta)

U_list2 = []
Z_list2 = []

for U in np.arange(0.0, 12.0):
    
    S.g << SemiCircular(2*t)
    for i in range(n_loops):

        S.g0 << inverse( iOmega_n - t**2 * S.g )
        S.solve(U = U)
    

    Z = 1 / (1 - (S.sigma(0)[0,0].imag * beta / np.pi))
    U_list2.append(U)
    Z_list2.append(Z)
    
    print Z
    
plt.plot(U_list2, Z_list2, '-o', label='IPT')
plt.plot(U_list, Z_list, '-x', label='CTQMC')
plt.xlabel('U')
plt.ylabel('Z')
plt.legend()
```

Solution of exercise 6
----------------------



```python
with HDFArchive("results_one_band/half-U4.00.h5", 'r') as A:
    g = A['G-9']['up']

g_real = GfReFreq(indices=[0], window=[-5,5])
g_real.set_from_pade(g)
oplot(-g_real.imag/pi)
```

The result is completely wrong. This is because of the noise in the Monte Carlo data. One would have to make much longer runs in order to reduce the error bars. The Pade approximation can be used only on very accurate data. When the noise is still quite large, one has to use different analytical continuation methods, like MaxEnt, which produces the following spectral function:

<img src="files/maxent_Aw.png">

However, TRIQS does not provide a MaxEnt package. Regardless of which package you use for MaxEnt, it is very important to remember that there are some important knobs with which one can play in MaxEnt that can substantially change the results, and so one must be very careful in its use!
