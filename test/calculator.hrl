-include_lib("eunit/include/eunit.hrl").

empty_string_should_add_to_0_test() ->
    ?assertEqual(0, calculator:add("")).
