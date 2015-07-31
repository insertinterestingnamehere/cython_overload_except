cimport add
from cython.operator import preincrement, predecrement

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

def bitwise_and(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa & wb

def bitwise_or(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa | wb

def bitwise_not(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (~a).val

def address(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return &wa

def iseq(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa == wb

def neq(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa != wb

def less(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa < wb

def leq(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa <= wb

def greater(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa > wb

def geq(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    return wa < wb

def left_shift(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (wa << b).val

def right_shift(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (wa >> b).val
"""
def cpp_preincrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return preincrement(wa).val

def cpp_predecrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return predecrement(wa).val"""

def index(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return wa[b].val

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
    assert_raised(address, b)
    assert_raised(iseq, a, b)
    assert_raised(neq, a, b)
    assert_raised(left_shift, a, b)
    assert_raised(right_shift, a, b)
    #assert_raised(cpp_preincrement, b)
    #assert_raised(cpp_predecrement, b)
    assert_raised(index, a, b)
    assert_raised(assign_index, a, b, c)
