#include "add.cpp"
#include <iostream>

int main(){
  wrapped_int a = 3;
  long long b = 2;
  std::cout << a[b].val << std::endl;
  wrapped_int &temp = a[b];
  std::cout << temp.val << std::endl;
}
