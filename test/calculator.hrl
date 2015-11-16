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

string_with_few_numbers_should_add_to_the_sum_of_numbers_test() ->
    ?assertEqual(7, calculator:add("2,3,2")).

newline_should_be_a_valid_delimenter_test() ->
    ?assertEqual(7, calculator:add("2\n3,2")).

alternative_delimenter_could_be_specified_test() ->
    ?assertEqual(7, calculator:add("//;\n2;3;2")).

alternative_delimenter_could_be_of_any_length_test() ->
    ?assertEqual(7, calculator:add("//;;;\n2;;;3;;;2")).

alternative_delimeter_could_be_made_of_regular_expression_special_characters_test() ->
    ?assertEqual(7, calculator:add("//***\n2***3***2")).
