import pyadd as pa
def assert_raised(f):
    try:
        f(3, 4)
        raised = False
    except:
        raised = True
    if not raised:
        raise ValueError("exception not raised properly")

if __name__ == '__main__':
    assert_raised(pa.test_wrapped_addition)
    assert_raised(pa.test_addition)
