#include <vector>

namespace nda { 

 template<typename T, int R> 
 class array { 
   public:
  void method1() const;
 };

 template<typename T, int R> 
 class array_view { 

  array_view(array<T, R> const &);
 };


 template<typename T, int R> 
 nda::array_view<T, R> make_view(nda::array<T, R> const & x);
 
 template<typename T, int R> 
 nda::array_view<T, R> make_view(int k, nda::array<T, R> const & x);

}
