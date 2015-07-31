rm pyadd.cpp pyadd.pyd
rm -rf build
python setup.py build_ext --inplace
python -c "import test"
