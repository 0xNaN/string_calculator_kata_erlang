-module(calculator).
-export([add/1]).

add(String)  ->
    lists:foldl(fun (Number, Sum) ->
                        Sum + Number
                end, 0, to_numbers(String)).

to_numbers(String) ->
    [to_number(Token) || Token <- split_into_tokens(String)].

split_into_tokens(String) ->
    re:split(String, "[,\n]", [{return, list}]).

to_number(String) ->
    case string:to_integer(String) of
        {error, no_integer} -> 0;
        {Number, _} -> Number
    end.


-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
