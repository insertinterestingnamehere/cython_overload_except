#include <stdexcept>

class wrapped_int{
    public:
        long long val;
        wrapped_int(){val = 0;}
        wrapped_int(long long val){this->val = val;}
        wrapped_int operator+(wrapped_int &other){if(other.val == 4){throw std::invalid_argument("tried to add 4");}return wrapped_int(this->val + other.val);}
        wrapped_int add(wrapped_int &other){return (*this) + other;}};
