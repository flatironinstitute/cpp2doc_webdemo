#include <array>
#include <type_traits>

#include <iostream>

#if __cplusplus > 201703L

template <class From, class To>
concept convertible_to =
  std::is_convertible_v<From, To> &&
  requires(std::add_rvalue_reference_t<From> (&f)()) {
    static_cast<To>(f());
  };

template <typename A, int R =-1> concept NdArray = requires(A const & a) {
 { a(0, 0) } -> convertible_to<typename std::decay_t<A>::value_t>;
 { a.shape() } ->   convertible_to<std::array<long, std::decay_t<A>::rank>>;
};

template <int R, typename A> concept NdArray2 = requires(A a) {
 { a(0, 0) } -> convertible_to<typename A::value_t>;
 { a.shape() } ->   convertible_to<std::array<long, A::rank>>;
};

#else

#define NdArray 

#endif

template<bool B> struct ess1 {
  
  void f(int u) requires B { }

};


template <typename T, int R=2> struct myarray;


template <typename T, int R> struct myarray {
 static constexpr int rank = R;
 using value_t = T;
 value_t operator()(int i, int j) const { return 0; }
 std::array<long, R> shape() const { return {};}

};

template<typename T> 
NdArray auto maker() { 
  return myarray<T, 2>{};}

inline auto maker2() { 
  auto b = maker<double>();

  return 1;
}
template <NdArray A> void fgh(A const& a) requires (A::rank==2){ } //std::cout << a(1, 2) << std::endl; }
template <NdArray A> void fgh4(A const& a) noexcept(A::rank==2){ } //std::cout << a(1, 2) << std::endl; }

template <typename A> void fgh2(A const& a) requires (NdArray<A,3>) { }//std::cout << a(1, 2) << std::endl; }

template <typename A> void fgh3(A const& a) requires NdArray<A> { }//std::cout << a(1, 2) << std::endl; }
template <typename A> requires NdArray<A>  void fgh5(A && a) { std::cout << a(1, 2) << std::endl; }

template <typename L, typename R> requires NdArray<L> and (not NdArray<R>)  void op(L const&, R const &) { }//std::cout << a(1, 2) << std::endl; }



  struct non{};


int main() {

  myarray<double, 2> a = maker<double>();

  auto b = maker<double>();
  NdArray auto c = maker<double>();

//  NdArray auto d = maker2();

 fgh5(a);
// f(non{});

 ess1<false> x;
 
 x.f(2);
}

