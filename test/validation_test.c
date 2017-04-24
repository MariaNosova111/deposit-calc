#include "deposit.h"

#include "ctest.h"

CTEST(input_tests, amount_more_zero)
{
  
    const int result = inputCheck(100, 1000);

    // Then
    const int expected = 0;
    ASSERT_EQUAL(expected, result);
}

