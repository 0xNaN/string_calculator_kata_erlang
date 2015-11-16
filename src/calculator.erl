-module(calculator).
-export([add/1]).

add(String)  ->
    case to_numbers(String) of
        [Token] -> Token;
        [FirstToken, SecondToken] -> FirstToken + SecondToken
    end.

to_numbers(String) ->
    [to_number(Token) || Token <- split_into_tokens(String)].

split_into_tokens(String) ->
    re:split(String, ",", [{return, list}]).

to_number(String) ->
    case string:to_integer(String) of
        {error, no_integer} -> 0;
        {Number, _} -> Number
    end.


-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
