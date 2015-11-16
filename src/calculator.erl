-module(calculator).
-export([add/1]).

add(String)  ->
    lists:foldl(fun (Number, Sum) ->
                        Sum + Number
                end, 0, to_numbers(String)).

to_numbers(String) ->
    [to_number(Token) || Token <- split_into_tokens(String)].


split_into_tokens([$/, $/ | DelimeterAndString]) ->
    {String, Delimeter} = extract_delimeter(DelimeterAndString),
    split_into_tokens(String, [Delimeter]);
split_into_tokens(String) ->
    split_into_tokens(String, ",").
split_into_tokens(String, Delimeter) ->
    re:split(String, "[" ++ Delimeter ++ "\n]", [{return, list}]).

extract_delimeter(DelimeterAndString) ->
    extract_delimeter(DelimeterAndString, "").
extract_delimeter([Delimeter, $\n | String], DelimeterSoFar) ->
    {String, [Delimeter | DelimeterSoFar]};
extract_delimeter([Delimeter | DelimeterAndString], DelimeterSoFar) ->
    extract_delimeter(DelimeterAndString, [Delimeter | DelimeterSoFar]).

to_number(String) ->
    case string:to_integer(String) of
        {error, no_integer} -> 0;
        {Number, _} -> Number
    end.


-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
