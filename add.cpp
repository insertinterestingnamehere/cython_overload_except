#include <stdexcept>

class wrapped_int {
public:
  long long val;
  wrapped_int() { val = 0; }
  wrapped_int(long long val) { this->val = val; }
  wrapped_int operator+(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("tried to add 4");
    }
    return wrapped_int(this->val + other.val);
  }
  wrapped_int operator+() {
    if (this->val == 4) {
      throw std::domain_error("'4' not in valid domain.");
    }
    return *this;
  }
  wrapped_int operator-(wrapped_int &other) {
    if (other.val == 4) {
      throw std::overflow_error("Value '4' is no good.");
    }
    return *this;
  }
  wrapped_int operator-() {
    if (this->val == 4) {
      throw std::range_error("Can't take the negative of 4.");
    }
    return wrapped_int(-this->val);
  }
  wrapped_int operator*(wrapped_int &other) {
    if (other.val == 4) {
      throw std::out_of_range("Multiplying by 4 isn't going to work.");
    }
    return wrapped_int(this->val * other.val);
  }
  wrapped_int operator/(wrapped_int &other) {
    if (other.val == 4) {
      throw std::out_of_range("Multiplying by 4 isn't going to work.");
    }
    return wrapped_int(this->val / other.val);
  }
  wrapped_int operator%(wrapped_int &other) {
    if (other.val == 4) {
      throw std::out_of_range("Multiplying by 4 isn't going to work.");
    }
    return wrapped_int(this->val % other.val);
  }
  long long operator^(wrapped_int &other) {
    if (other.val == 4) {
      throw std::out_of_range("Multiplying by 4 isn't going to work.");
    }
    return this->val ^ other.val;
  }
  wrapped_int operator!() {
    if (this->val == 4) {
      throw std::underflow_error("4 is both too small and too big.");
    }
    return *this;
  }
  wrapped_int operator~() {
    if (this->val == 4) {
      throw std::range_error("4 is really just no good for this!");
    }
    return *this;
  }
  wrapped_int operator&() {
    if (this->val == 4) {
      throw std::out_of_range("You really can't take the address of 4.");
    }
    return *this;
  }
  wrapped_int &operator++() {
    if (this->val == 4) {
      throw std::invalid_argument("No incrementing 4!");
    }
    this->val += 1;
    return *this;
  }
  wrapped_int operator++(int thing) {
    wrapped_int t(*this);
    operator++();
    return t;
  }
  wrapped_int &operator--() {
    if (this->val == 4) {
      throw std::invalid_argument("No incrementing 4!");
    }
    this->val -= 1;
    return *this;
  }
  wrapped_int operator--(int thing) {
    wrapped_int t(*this);
    operator--();
    return t;
  }
  wrapped_int &operator=(long long &other_val) {
    if (other_val == 4) {
      throw std::invalid_argument("4 was rejected.");
    }
    this->val = other_val;
    return *this;
  }
  wrapped_int operator()(long long &other_val) {
    if (other_val == 4) {
      throw std::invalid_argument("4 shall not pass!");
    }
    return wrapped_int(this->val * other_val);
  }
  wrapped_int &operator[](long long &idx) {
    if (idx == 4) {
      throw std::invalid_argument("Index of 4 not allowed.");
    }
    return *this;
  }
};
