import cpp_template_ref_args as c

assert c.test_template_ref_arg(4) == 4
assert c.test_template_ref_attr(4) == (4, 4)
assert c.test_template_ref_const_attr(4) == 4

import if_else_expr_cpp as ie
assert ie.test_one_ref(False) == 1
assert ie.test_one_ref(True) == 100
assert ie.test_both_ref(False) == (1, 100)
assert ie.test_both_ref(True) == (100, 2)

print "PASSED"
