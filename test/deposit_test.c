#include "deposit.h"

#include "ctest.h"

CTEST(deposit_tests, amount_less_100000)
{
  
    const int result = perform(40, 5000);

    // Then
    const int expected = 5100;
    ASSERT_EQUAL(expected, result);
}
CTEST(deposit_tests, amount_more_100000)
{
  
    const int result = perform(40, 500000);

    // Then
    const int expected = 515000;
    ASSERT_EQUAL(expected, result);
}


