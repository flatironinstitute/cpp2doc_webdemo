---
layout: function
short_name: make_view
qualified_name: nda::make_view
namespaces: [nda]
includer: src/nda.hpp
brief: A short description of make_view
overloads:
  template <typename T, int R> nda::array_view<T, R> nda::make_view(const nda::array<T, R> & x):
    desc: First overload doc
    source: src/nda.hpp
  template <typename T, int R> nda::array_view<T, R> nda::make_view(int k, const nda::array<T, R> & x):
    desc: Another overload
    source: src/nda.hpp
desc: |
  Long description of this function
  Possibly with some **bold text** (markdown), 
  or some formula like 
  
  $$ \int f(x) dx = 0 $$
  
  $$ \sum_{n=0}^\infty \frac{1}{n^2} = \frac{\pi^2}{6} $$
return_value: A view of the array in question
params:
  x: Description of x
  k: Description of k is *important*
tparams:
  T: "T: who carex?"
  R: R is an int
example:
  desc: The description of the code
  code: |
    #include <nda/nda.hpp>
    int main() {
      nda::array<int, 1> a{1, 2, 3};
      nda::array_view<int, 1> v = make_view(a);
      std::vector<nda::array> V{{1, 2}, {2, 3}};
    }
see-also: []
...
