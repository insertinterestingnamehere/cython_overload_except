rm -rf build *.pyd *.so cpp_template_ref_args.cpp if_else_expr_cpp.cpp
python setup.py build_ext --inplace
