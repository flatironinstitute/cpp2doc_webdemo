---
# Do not edit this first section
layout: function
fancy_name: ev_hermitian
namespace: forktps
includer: forktps/forktps_include.hpp

# Brief description. One line only.
brief: Eigenvalue solver for the tridiagonal matrix in Krylov space. It uses the lapack dsyev_ method.

# List of overloads. Edit only the desc
overloads:

  - signature: void ev_hermitian(double *MAT, double *diag, int L, char JOBZ)
    desc: Eigenvalue solver for the tridiagonal matrix in Krylov space. It uses the lapack dsyev_ method.

# Long description. Any Markdown, with code, latex, multiline with |
desc: ""

# Parameters of the function. Edit only the description after the :
params:
  MAT: double []                Matrix to be diagonalized in vector form (length $L^2$), contains eigenvectors after function call.
  diag: double []                Array of lentgh *L*, contains the eigenvalues after function call.
  L: int                Size of matrix.
  JOBZ: char                'V' to calculate eigenvectors and eigenvalues, 'N' to calculate for eigenvalues only.

# Template parameters of the function. Edit only the description after the :
tparams:
  {}

# Desc of the return value
return_value: __MISSING__

# Code example. desc: any markdown to explain it.
example:
  desc: ""
  code: ""
  comment: ""

# A list of related functions/classes
see-also: []

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/forktps/ev_hermitian/
title: forktps::ev_hermitian
parent: forktps
source: /mnt/home/dbauernfeind/FORKTPS/forktps/c++/forktps/fork/EigSolver.hpp
...

