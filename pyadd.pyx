cimport add

def assert_raised(f, *args):
    try:
        f(*args)
        raised = False
    except:
        raised = True
    assert raised

def addition(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return (wa + wb).val

def subtraction(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return (wa - wb).val

def multiplication(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return (wa * wb).val

def division(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return (wa / wb).val

def mod(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return (wa % wb).val

def minus(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (-wa).val

def plus(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (+wa).val

def xor(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa ^ wb

def assign_index(long long a, long long b, long long c):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    wb[c] = wa
    return wb.val

def test():
    a = 1
    b = 4
    c = 4
    assert_raised(addition, a, b)
    assert_raised(subtraction, a, b)
    assert_raised(multiplication, a, b)
    assert_raised(division, a, b)
    assert_raised(mod, a, b)
    assert_raised(minus, b)
    assert_raised(plus, b)
    assert_raised(xor, a, b)
    assert_raised(assign_index, a, b, c)
