Single-orbital Hubbard model
============================

In this notebook you will reproduce the Bethe lattice DMFT that we did earlier with IPT,
but you will use the CTHYB solver to find the solution of the impurity problem. We will
consider the problem at half-filling again. 

In general it is a good idea to develop the script in the notebook, because it is very convenient to find bugs and to quickly come to a working code. In the beginning you should use a small number of Monte Carlo iterations (say 1000) so that the code runs quickly. Your first main goal is to have a functional script. However, once the script is done, we recommend that you do longer runs (production runs) from a shell. It will be easier for you to see the progress of the Monte Carlo solver. Think about saving the relevant data to an archive and then go back to the notebook when it comes to analyzing and plotting the results. This is usually how things are done: elaboration of the scripts and analysis of the data from the notebook, production from a shell.

In order to run your script from a shell, open a terminal and go in the tutorial directory.
This is where you should edit your production script. Let's call it `run_dmft.py`. Use your favourite editor (e.g. `vi` or `gedit`) to create the script `run_dmft.py`.

When the script is written save it and run it. You can:

- run it directly from the shell to see the Monte Carlo progress:

`>>> pytriqs run_dmft.py`

- run the following command in a notebook cell.

`%run run_dmft.py`

That's it! When the run is done and data has been saved into an archive, you can go back to the notebook and read the archive in order to analyze or plot the results.

Exercise 1
----------

Write a DMFT loop, like you did earlier but using the CTHYB solver. 

*Hint*: It is useful to symmetrize the Green's function (make the `up` and `down` components the same) to avoid some artificial polarization of the system close to the Mott transition. You might want to enforce the `up`-`down` symmetry on `S.G` just before the self-consistency condition. In order
to have reasonable data you should have at least 10000 cycles.


```python
from pytriqs.gf import *
from pytriqs.operators import *
from pytriqs.archive import *
from triqs_cthyb import Solver
from numpy import *

# Parameters of the model
t = 1.0
beta = 10
n_loops = 10
U = 4.0

# code here

# DMFT loop with self-consistency
# code here
```

Exercise 2
----------

Here, you will learn to analyze the output of the solver. As discussed, the Monte Carlo algorithm provide results on the
Matsubara axis. This makes the analysis of the results slightly more delicate than if we had them directly on the real
axis. When we used the IPT solver, we could see the Mott transition as the appearance of a gap in the spectral function.
After the Monte Carlo run, we do not have the spectral function, so we will have to use some other criteria to decide, e.g.,
if the system is metallic or insulating.

Plot the Green's function at the end of the DMFT loops for several values of $U$ (say between 2 and 8). Focus on the extrapolation of the imaginary part of the Green's function to zero frequency. How does it change with $U$? Is there
a way to see the Mott transition just by inspecting the imaginary part of the Green's function?

Exercise 3
----------

Do the same exercise as above, but analyze the self-energy. The noise usually gets bigger for larger frequencies, so just focus on the first few Matsubara frequencies. There the noise should not be too important. Again, by looking at the extrapolation to zero frequency of the imaginary part of the self-energy, can you tell where the Mott transition happens?

Exercise 4
----------

A very useful quantity to measure the degree of correlation of a metal is the *quasiparticle weight* $Z$. It is defined as

$$
Z = \lim_{\omega_n \rightarrow 0} \Big( 1 - \frac{d\mathrm{Im} \Sigma(i\omega_n)}{di\omega_n} \Big)^{-1}
$$


For a non-interacting metal $Z=1$. As correlations appear, $Z$ gradually gets smaller. It reaches 0 at the Mott transition. Make a plot of $Z$ versus $U$ for the Bethe lattice Hubbard model. 

*Hint*: In order to have access to the values of $\Sigma_\uparrow(i\omega_n)$, you can use `S.Sigma['up'](n)`. This will be useful to numerically compute the derivative required to compute $Z$.

Exercise 5
----------

Go back to your IPT code and try to modify it to extract the $Z$ versus $U$ curve. Compare this to the result you found in Exercise 4. Is the critical $U$ for the Mott transition similar to the one you found using CTHYB?

Exercise 6
----------

Try to analytically continue the Green's function on the real axis using the Pade approximation. What can
you say about the result?
