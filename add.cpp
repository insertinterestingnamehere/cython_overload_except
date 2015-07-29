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
  long long operator&(wrapped_int &other) {
    if (other.val == 4) {
      throw std::underflow_error("Can't do this with 4!");
    }
    return this->val & other.val;
  }
  long long operator|(wrapped_int &other) {
    if (other.val == 4) {
      throw std::underflow_error("Can't do this with 4!");
    }
    return this->val & other.val;
  }
  wrapped_int operator~() {
    if (this->val == 4) {
      throw std::range_error("4 is really just no good for this!");
    }
    return *this;
  }
  long long operator&() {
    if (this->val == 4) {
      throw std::out_of_range("4 cannot be located!");
    }
    return this->val;
  }
  long long operator==(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("4 isn't logical and can't be equal to anything!");
    }
    return this->val == other.val;
  }
  long long operator!=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("4 isn't logical and can'd be not equal to anything either!");
    }
    return this->val != other.val;
  }
  long long operator<(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't compare with 4!");
    }
    return this->val < other.val;
  }
  long long operator<=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't compare with 4!");
    }
    return this->val <= other.val;
  }
  long long operator>(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't compare with 4!");
    }
    return this->val > other.val;
  }
  long long operator>=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't compare with 4!");
    }
    return this->val >= other.val;
  }
  wrapped_int operator<<(long long &shift) {
    if (shift == 4) {
      throw std::overflow_error("Shifting by 4 is just bad.");
    }
    return wrapped_int(this->val << shift);
  }
  wrapped_int operator>>(long long &shift) {
    if (shift == 4) {
      throw std::underflow_error("Shifting by 4 is just bad.");
    }
    return wrapped_int(this->val >> shift);
  }
  wrapped_int &operator+=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val += other.val;
    return *this;
  }
  wrapped_int &operator-=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val -= other.val;
    return *this;
  }
  wrapped_int &operator*=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val *= other.val;
    return *this;
  }
  wrapped_int &operator/=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val /= other.val;
    return *this;
  }
  wrapped_int &operator%=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val %= other.val;
    return *this;
  }
  wrapped_int &operator^=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val ^= other.val;
    return *this;
  }
  wrapped_int &operator&=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val %= other.val;
    return *this;
  }
  wrapped_int &operator|=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val %= other.val;
    return *this;
  }
  wrapped_int &operator<<=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val %= other.val;
    return *this;
  }
  wrapped_int &operator>>=(wrapped_int &other) {
    if (other.val == 4) {
      throw std::invalid_argument("Can't perform an in-place operation with 4!");
    }
    this->val %= other.val;
    return *this;
  }
  wrapped_int &operator++() {
    if (this->val == 4) {
      throw std::out_of_range("Can't increment 4!");
    }
    this->val += 1;
    return *this;
  }
  wrapped_int &operator--() {
    if (this->val == 4) {
      throw std::out_of_range("Can't increment 4!");
    }
    this->val -= 1;
    return *this;
  }
  wrapped_int &operator[](long long &idx) {
    if (idx == 4) {
      throw std::invalid_argument("Index of 4 not allowed.");
    }
    return *this;
  }
};
