-include_lib("eunit/include/eunit.hrl").

empty_string_should_add_to_0_test() ->
    ?assertEqual(0, calculator:add("")).

string_0_should_add_to_0_test() ->
    ?assertEqual(0, calculator:add("0")).
