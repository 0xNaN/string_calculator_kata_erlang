-include_lib("eunit/include/eunit.hrl").

empty_string_should_add_to_0_test() ->
    ?assertEqual(0, calculator:add("")).

string_0_should_add_to_0_test() ->
    ?assertEqual(0, calculator:add("0")).

string_N_should_add_to_N_test() ->
    ?assertEqual(1, calculator:add("1")),
    ?assertEqual(2, calculator:add("2")),
    ?assertEqual(3, calculator:add("3")),
    ?assertEqual(4, calculator:add("4")),
    ?assertEqual(5, calculator:add("5")),
    ?assertEqual(6, calculator:add("6")),
    ?assertEqual(7, calculator:add("7")),
    ?assertEqual(8, calculator:add("8")),
    ?assertEqual(9, calculator:add("9")),
    ?assertEqual(10, calculator:add("10")),
    ?assertEqual(125, calculator:add("125")).

string_with_2_and_3_should_add_to_5_test() ->
    ?assertEqual(5, calculator:add("2,3")).