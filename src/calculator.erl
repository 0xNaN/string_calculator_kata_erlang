-module(calculator).
-export([add/1]).

add(String)  ->
    case re:split(String, ",", [{return, list}]) of
        [Token] -> to_number(Token);
        [FirstToken, SecondToken] -> to_number(FirstToken) + to_number(SecondToken)
    end.

to_number(String) ->
    case string:to_integer(String) of
        {error, no_integer} -> 0;
        {Number, _} -> Number
    end.


-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
