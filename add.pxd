cdef extern from "add.cpp":
    cppclass wrapped_int:
        long long val
        wrapped_int()
        wrapped_int(long long val)
        wrapped_int operator+(wrapped_int &other) except +
        wrapped_int add(wrapped_int &other) except +
