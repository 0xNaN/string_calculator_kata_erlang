-module(calculator).
-export([add/1]).

add(String)  ->
   to_number(String).

to_number(String) ->
    case string:to_integer(String) of
        {error, no_integer} -> 0;
        {Number, _} -> Number
    end.


-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
