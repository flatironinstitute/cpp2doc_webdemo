---
title: Applications
layout: default
nav_include: true
nav_order: 2
permalink: /applications
---

# Applications based on TRIQS

The TRIQS library provides all the necessary building blocks for the
development of applications for the study of interacting quantum
systems.
{: .fs-6 .fw-300 }

These applications can be grouped into one of the following
categories:

<dl>
  <dt>Official applications</dt>
  <dd>Developed and are maintained by the TRIQS collaboration.</dd>
  <dt>External applications</dt>
  <dd>Developed and are maintained externally but still fundamentally relying on TRIQS library features.</dd>
  <dt>Interfaces to external codes</dt>
  <dd>Thin wrappers around TRIQS independent codes that are developed and maintained externally. The maintenance of the interface layer is shared between the TRIQS collaboration and the external developers.</dd>
</dl>

If you would like to have your application listed please contact us
directly.

---

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Impurity Solvers

### Hybridization-expansion solver

The hybridization-expansion solver is an official TRIQS application that
allows to solve the generic problem of a quantum impurity embedded in a
conduction bath. It is based on a quantum Monte Carlo algorithm that
stochastically samples the diagrams of a hybridization expansion of the
partition function.

For publications based on results produced with this application please
cite [Comput. Phys. Comm. 200, 274
(2016)](https://www.sciencedirect.com/science/article/pii/S001046551500404X)

*Homepage:* <https://triqs.github.io/cthyb/>

### Hubbard I solver (external)

This solver gives the Hubbard I solution of a quantum impurity problem,
i.e. it solves the atomic limit. This simple approximation allows for
very quick answers even for large multiband systems.

*Homepage:* <https://triqs.github.io/hubbardI/>

### PYED - Exact diagonalization for finite quantum systems (external)

The TRIQS-based python application pyed implements exact diagonalization
for finite fermionic many-body quantum systems, together with
calculations of several response functions in imagianary time.

*Homepage*: <https://github.com/hugostrand/pyed/>

### Interface to the pomerol exact diagonalization solver (external)

TRIQS wrapper around the [Pomerol](http://aeantipov.github.io/pomerol)
exact diagonalization library.

For publications based on results produced with this application please
cite [10.5281/zenodo.592291](https://doi.org/10.5281/zenodo.592291)

*Homepage*: <https://github.com/krivenko/pomerol2triqs/>

### Interface to the w2dynamics impurity solver

This application provides an interface to the continuous-time
hybridization expansion impurity solver contained in the
[w2dynamics](https://github.com/w2dynamics/w2dynamics) software package.

For publications based on results produced with this application please
cite [Comput. Phys. Commun. 235, 388
(2019)](https://www.sciencedirect.com/science/article/pii/S0010465518303217)

*Homepage*: <https://triqs.github.io/w2dynamics_interface/>

### Interface to the NRG Ljubljana impurity solver

This application provides an interface to the numerical renormalization
group impurity solver [NRG Ljubljana](http://nrgljubljana.ijs.si).

For publications based on results produced with this application please
cite [Phys. Rev. B 79, 085106
(2009)](https://doi.org/10.1103/PhysRevB.79.085106)

*Homepage*: <https://triqs.github.io/nrgljubljana_interface/>

## Ab-Initio Tools

### DFT tools - Toolbox for ab initio calculations of correlated materials

DFTTools is an official TRIQS application that provides an interface to
DFT packages such as Wien2k and VASP for DFT+DMFT calculation. It allows
you to turn band-structure calculations results to inputs for
full-fledged DFT+DMFT calculations in a few lines.

For publications based on results produced with this application please
cite [Comput. Phys. Comm. 204, 200
(2016)](https://www.sciencedirect.com/science/article/pii/S0010465516300728?via%3Dihub)

*Homepage:* <https://triqs.github.io/dft_tools/>

### TPRF - The Two-Particle Response Function tool box

The two-particle response function tool box (TPRF) is an official TRIQS
application that provides efficient (C++/OpenMP/MPI) implementations of
the basic operations for higher order response functions such as
inversion, products, the random phase approximation, the Bethe Salpeter
equation, etc.

For publications based on results produced with this application please
cite [10.5281/zenodo.2638058](https://doi.org/10.5281/zenodo.2638058)

*Homepage:* <https://triqs.github.io/tprf/>

## Analytic Continuation

### Maxent

This official TRIQS application provides a modular Maximum Entropy
program to perform analytic continuation.

*Homepage:* <https://triqs.github.io/maxent/>

### SOM - Stochastic Optimization Method for Analytic Continuation (external)

This external TRIQS application is an optimized implementation of an
analytic continuation method proposed by Andrey S. Mishchenko. A
detailed description of the method can be found [here](http://www.cond-mat.de/events/correl12/manuscripts/).