#include <vector>

namespace nda { 

 template<typename T, int R> 
 class array { 

  void method1() const;
 };

 template<typename T, int R> 
 class array_view { 

  array_view(array<T, R> const &);
 };


 template<typename T, int R> 
 array_view<T, R> make_view(array<T, R> const & x);

}
