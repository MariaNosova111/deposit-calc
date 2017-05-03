#include "deposit.h"

#include "ctest.h"

CTEST(input_tests, duration_less_365)
{
  
    const int result = inputCheck(100, 1000);

    // Then
    const int expected = 0;
    ASSERT_EQUAL(expected, result);
}
CTEST(input_tests, duration_more_zero)
{
  
    const int result = inputCheck(100, 1000);

    // Then
    const int expected = 0;
    ASSERT_EQUAL(expected, result);
}
CTEST(input_tests, amount_more_zero)
{
  
    const int result = inputCheck(100, 1000);

    // Then
    const int expected = 0;
    ASSERT_EQUAL(expected, result);
}
CTEST(input_tests, amount_more_zero_fail)
{
  
    const int result = inputCheck(-20, 1000);

    // Then
    const int expected = 0;
    ASSERT_EQUAL(expected, result);
}
