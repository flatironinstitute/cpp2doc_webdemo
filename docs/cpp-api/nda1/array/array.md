---
# Do not edit this first section
layout: class
short_name: array
qualified_name: nda1::array
namespace: nda1
includer: ""
signature: |
  template <typename T, int R>
  class array

# Template parameters of the function. Edit only the description after the :
tparams:
  T: T is a type
  R: Rank

# Brief description. One line only.
brief: A brief doc of array

# Long description. Any Markdown, with code, latex, multiline with |
desc: |
  A long doc of array with multiple lines
  And several paragraphs also very long
  private


  Another paragraph

# A list of methods. You can reorder, regroup into a dict : groupname -> list
methods: [method1, storage]

# A list of non_member_functions
non_member_functions: []

# Public member types
member_types:
  storage_t:
    desc: This is value_t
  arr_t:
    desc: This is value_t
  index_t:
    desc: My index_t
member_fields:
  x:
    type: double
    desc: Something

# Code example. desc: any markdown to explain it.
example:
  desc: The description of the code
  code: |
    #include <nda1/nda1.hpp>
    int main() {
      nda1::array<int, 1> a{1, 2, 3};
      nda1::array_view<int, 1> v = make_view(a);
      std::vector<nda1::array> V{{1, 2}, {2, 3}};

# A list of related functions/classes
see-also: [/cpp-api/nda1/array_view]

# ---------- DO NOT EDIT BELOW --------
permalink: /cpp-api/nda1/array
title: nda1::array
source: /Users/oparcollet/cpp2doc_webdemo/src/nda1.hpp
parent: nda1
has_children: true
...

