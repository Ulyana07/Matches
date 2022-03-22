#include "../function.h"
#define CATCH_CONFIG_MAIN
#include "../catch/catch.hpp"

TEST_CASE("Test Allowable Amount")
{
    bool expected = true;
    REQUIRE(check_number_match(2, 100) == expected);
}

TEST_CASE("Test Max Allowable Amount")
{
    bool expected = true;
    REQUIRE(check_number_match(10, 100) == expected);
}

TEST_CASE("Test Invalid Amount")
{
    bool expected = false;
    REQUIRE(check_number_match(15, 100) == expected);
}