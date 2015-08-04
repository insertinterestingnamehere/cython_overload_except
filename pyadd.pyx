cimport add
from cython.operator import preincrement, predecrement, postincrement, postdecrement

def assert_raised(f, *args, **kwargs):
    err = kwargs.get('err', None)
    if err is None:
        try:
            f(*args)
            raised = False
        except:
            raised = True
    else:
        try:
            f(*args)
            raised = False
        except err:
            raised = True
    assert raised


def initialization(long long a, long long b):
    cdef add.wrapped_int w = add.wrapped_int(a, b)
    return w.val

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

def cpp_preincrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return preincrement(wa).val

def cpp_predecrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return predecrement(wa).val

def cpp_postincrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return postincrement(wa).val

def cpp_postdecrement(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return postdecrement(wa).val

def negate(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return (not wa).val

def bool_cast(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    if wa:
        return True
    else:
        return False

def index(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return wa[b].val

def assign_index(long long a, long long b, long long c):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    wb[c] = wa
    return wb.val

def call(long long a):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    return wa()

def assign_same(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    cdef add.wrapped_int wb = add.wrapped_int(b)
    wa = wb
    return wa.val

def assign_different(long long a, long long b):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    wa = b
    return wa.val

def cascaded_assign(long long a, long long b, long long c):
    cdef add.wrapped_int wa = add.wrapped_int(a)
    a = b = c
    return a.val

def separate_exceptions(long long a, long long b, long long c, long long d, long long e):
    cdef:
        add.wrapped_int wa = add.wrapped_int(a)
        add.wrapped_int wc = add.wrapped_int(c)
        add.wrapped_int wd = add.wrapped_int(d)
        add.wrapped_int we = add.wrapped_int(e)
    wa[b] = (+wc) * wd + we
    return a.val

def test():
    assert_raised(initialization, 1, 4)
    assert_raised(addition, 1, 4)
    assert_raised(subtraction, 1, 4)
    assert_raised(multiplication, 1, 4)
    assert_raised(division, 1, 4)
    assert_raised(mod, 1, 4)
    assert_raised(minus, 4)
    assert_raised(plus, 4)
    assert_raised(xor, 1, 4)
    assert_raised(address, 4)
    assert_raised(iseq, 1, 4)
    assert_raised(neq, 1, 4)
    assert_raised(left_shift, 1, 4)
    assert_raised(right_shift, 1, 4)
    assert_raised(cpp_preincrement, 4)
    assert_raised(cpp_predecrement, 4)
    assert_raised(cpp_postincrement, 4)
    assert_raised(cpp_postdecrement, 4)
    assert_raised(negate, 4)
    assert_raised(bool_cast, 4)
    assert_raised(index, 1, 4)
    assert_raised(assign_index, 1, 4, 4)
    assert_raised(call, 4)
    assert_raised(assign_same, 4, 4)
    assert_raised(assign_different, 4, 4)
    assert_raised(cascaded_assign, 4, 4, 1)
    assert_raised(cascaded_assign, 4, 1, 4)
    assert_raised(separate_exceptions, 1, 1, 1, 1, 4, err=ValueError)
    assert_raised(separate_exceptions, 1, 1, 1, 4, 1, err=OverflowError)
    assert_raised(separate_exceptions, 1, 1, 4, 1, 1, err=RuntimeError)
    assert_raised(separate_exceptions, 1, 4, 1, 1, 1, err=IndexError)
    assert_raised(separate_exceptions, 4, 1, 1, 1, 3, err=ArithmeticError)
