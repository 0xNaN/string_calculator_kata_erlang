-module(calculator).
-export([add/1]).

add("") -> 0.

-ifdef(TEST).
-include_lib("../test/calculator.hrl").
-endif.
