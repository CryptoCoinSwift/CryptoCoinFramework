void subtract(uint32_t result[], uint32_t lhs[], uint32_t rhs[]);

// Takes two arrays with 8 UInt32's each and returns the result as an array.
uint32_t *  divideWithOverflowC(uint32_t numerator[], uint32_t denominator[]);
uint32_t * remainderWithOverflowC(uint32_t numerator[], uint32_t denominator[]);

void montgomery(uint32_t x[], uint32_t y[],  uint32_t z[]);

// Multiply two 64 bit integers and return a 128 bit integer. Takes two arrays with 2 UInt32's each and
// returns the result as an array with 4 UInt32's.
void multiply(uint32_t lhs[], uint32_t rhs[],  uint32_t res[]);