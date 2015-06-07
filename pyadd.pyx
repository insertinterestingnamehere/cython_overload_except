cimport add

def test_addition(long long a, long long b):
    cdef:
        add.wrapped_int wa = add.wrapped_int(a)
        add.wrapped_int wb = add.wrapped_int(b)
    print (wa + wb).val

def test_wrapped_addition(long long a, long long b):
    cdef:
        add.wrapped_int wa = add.wrapped_int(a)
        add.wrapped_int wb = add.wrapped_int(b)
    print wa.add(wb).val
