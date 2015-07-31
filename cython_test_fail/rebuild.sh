rm -rf build *.pyd *.so *.cpp
python setup.py build_ext --inplace
