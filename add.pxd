from libcpp cimport bool

cdef extern from "add.cpp" nogil:
    cppclass wrapped_int:
        long long val
        wrapped_int()
        wrapped_int(long long val)
        wrapped_int(long long v1, long long v2) except +
        wrapped_int operator+(wrapped_int &other) except +ValueError
        wrapped_int operator+() except +RuntimeError
        wrapped_int operator-(wrapped_int &other) except +
        wrapped_int operator-() except +
        wrapped_int operator*(wrapped_int &other) except +OverflowError
        wrapped_int operator/(wrapped_int &other) except +
        wrapped_int operator%(wrapped_int &other) except +
        long long operator^(wrapped_int &other) except +
        long long operator&(wrapped_int &other) except +
        long long operator|(wrapped_int &other) except +
        wrapped_int operator~() except +
        long long operator&() except +
        long long operator==(wrapped_int &other) except +
        long long operator!=(wrapped_int &other) except +
        long long operator<(wrapped_int &other) except +
        long long operator<=(wrapped_int &other) except +
        long long operator>(wrapped_int &other) except +
        long long operator>=(wrapped_int &other) except +
        wrapped_int operator<<(long long shift) except +
        wrapped_int operator>>(long long shift) except +
        wrapped_int &operator++() except +
        wrapped_int &operator--() except +
        wrapped_int operator++(int) except +
        wrapped_int operator--(int) except +
        wrapped_int operator!() except +
        bool operator bool() except +
        #wrapped_int &operator+=(wrapped_int &other) except +
        #wrapped_int &operator-=(wrapped_int &other) except +
        #wrapped_int &operator*=(wrapped_int &other) except +
        #wrapped_int &operator/=(wrapped_int &other) except +
        #wrapped_int &operator%=(wrapped_int &other) except +
        #wrapped_int &operator^=(wrapped_int &other) except +
        #wrapped_int &operator&=(wrapped_int &other) except +
        #wrapped_int &operator|=(wrapped_int &other) except +
        #wrapped_int &operator<<=(wrapped_int &other) except +
        #wrapped_int &operator>>=(wrapped_int &other) except +
        wrapped_int &operator[](long long &index) except +IndexError
        long long &operator()() except +
        wrapped_int &operator=(const wrapped_int &other) except +ArithmeticError
        wrapped_int &operator=(const long long &vao) except +
