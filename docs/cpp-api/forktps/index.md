---
layout: default
title: The ForkTPS Library
permalink: /cpp-api/forktps/index/
#has_children: true
#nav_include: true
#nav_order: 3
---

# The ForkTPS library
{: .no_toc }


The Forktps library is a Tensor Network based impurity solver for multi-band 
impurity problems by using a special Tensor Network geometry as shown in the
image below for a two-band model:

![](/assets/images/FTPS.png) 

It's main idea is to use a Tensor Network that is at the same time simple enough 
that established algorithms can be used and decouples the bath 
degrees of freedom of different spin orbitals as much as possible. The reason 
why the decoupling might be a good idea is that the Hamiltonian of impurity models 
itself doesn't have any direct coupling between bath degrees of freedom.

## What it is and what it can do:
- Zero Temperature $$T=0$$ solver.
- Computes real-time/frequency Green's functions.
- Imaginary time also possible.
- Multiple bands, works well for two and three bands, five bands can work depending on the problem.
- Hamiltonian based solver: bath of finite but large size - $$\mathcal{O}(100)$$ sites.
- Compute $$\langle A(t) B \rangle$$ for arbitrary impurity operators $$A$$ and $$B$$.
- Off-diagonal hybridizations.
- Sign problem free. 

## What it is not (currently?):
- Finite Temperature (ongoing work)
- Dynamic Interaction $$U(\omega)$$ (ongoing work)
- All purpose solver. Extremely long times/ low energies difficult 
    but far from impossible.
- Complete black box. Some Tensor Network knowledge is required. A good starting point
  would be for example the <a href="https://itensor.org/" target="_blank">ITensor homepage</a>
  or <a href="https://arxiv.org/abs/1008.3477/" target="_blank">this review</a>.
  In simple cases is is close to a black box though.
- To use it well it requires some basic understanding of real-time Green's 
  functions and the effects of the finite size bath.


<BR><BR><BR><BR><BR>
Test text
{: vertical-align: middle }
<BR><BR><BR><BR><BR>

The solver computes Green's functions by first computing the ground state 
$$| \psi_0 \rangle$$ with the Density Matrix Renormalization Group 
(<a href="https://arxiv.org/abs/1008.3477/" target="_blank">DMRG</a>) 
applying the operators $$A$$ and $$B$$ and finally performing real-time 
evolution to obtain the correlator:

$$ G_{A,B}(t) = \langle \psi_0 | A(t) B | \psi_0 \rangle .$$

In the default case, $$A$$ and $$B$$ are the single particle creation/annihilation
operators needed for the retarded single particle Green's functions. But the ForkTPS library
is capable of computing the (single-time) Green's function for arbitrary 
impurity operators $$A$$ and $$B$$. This includes for example spin-spin correlators 
$$\langle S^{z}(t) S^z \rangle$$. Even extensions to bath operators would be 
possible but are currently not implemented.

Under the hood, ForkTPS relies on the 
<a href="https://itensor.org/" target="_blank">ITensor</a>-library which provides 
an efficent block sparse tensor class as well as algorithms to perform the 
tensor decompositions (e.g. Singular Value Decompositions).

To get started with the ```c++``` part of the library, the following table lists 
the most important classes and functions:

|---
| Solver & Parameters | Hamiltonian | Important functions
| :---: | :---: | :---: 
| **[solver_core](/cpp-api/forktps/solver_core)** <BR> *The solver class itself.* <BR><BR> **[constr_params_t](/cpp-api/forktps/constr_params_t)** <BR> *Parameter set for solver construction.* <BR><BR> **[solve_params_t](/cpp-api/forktps/solve_params_t)** <BR> *Parameter set for solving.* <BR><BR> | **[Bath](/cpp-api/forktps/bath/)** <BR> *Bath parameters.* <BR><BR> **[Hloc](/cpp-api/forktps/hloc/)** <BR> *Non-interacting impurity Hamiltonian.* <BR><BR> **[H_int](/cpp-api/forktps/H_int/)** <BR> *Interaction Hamiltonian.* | **[DMRG](/cpp-api/forktps/DMRG)** <BR> *Ground state search.* <BR><BR> **[TDVP](/cpp-api/forktps/TDVP)** <BR> *Time Evolution <BR>(Time Dependent Variational Principle).* <BR><BR>
|---

For a full documentation of the library see [Documentation](/cpp-api/forktps/)

...
