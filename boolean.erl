-module(boolean).
-export([b_not/1, b_and/2, b_or/2, b_nand/2]).

b_not(true) ->
    false;
b_not(false) ->
    true;
b_not(_Other) ->
    {error, invalid_input}.

b_and(_, false) ->
    false;
b_and(false, _) ->
    false;
b_and(true, true) ->
    true;
b_and(_Other1, _Other2) ->
    {error, invalid_input}.

b_or(_, true) ->
    true;
b_or(true, _) ->
    true;
b_or(false, false) ->
    false;
b_or(_Other1, _Other2) ->
    {error, invalid_input}.

b_nand(X, Y) ->
    b_not(b_and(X, Y)).
