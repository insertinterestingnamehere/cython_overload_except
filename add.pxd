cdef extern from "add.cpp" nogil:
    cppclass wrapped_int:
        long long val
        wrapped_int()
        wrapped_int(long long val)
        wrapped_int operator+(wrapped_int &other) except +
        wrapped_int add "operator+"(wrapped_int &other) except +
        wrapped_int operator+() except +
        wrapped_int operator-(wrapped_int &other) except +
        wrapped_int operator-() except +
        wrapped_int operator*(wrapped_int &other) except +
        wrapped_int operator/(wrapped_int &other) except +
        wrapped_int operator%(wrapped_int &other) except +
        long long operator^(wrapped_int &other) except +
        wrapped_int &operator[](long long &index) except +
