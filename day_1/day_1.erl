-module(day_1).
-export([measure/1]).

measure([]) -> measure([], 0, 0);
measure([Head|Tail]) -> measure(Tail, Head, 0).

measure([], _, Acc) -> 
    Acc;
measure([Head|Tail], Prev, Acc) ->
    if Head >  Prev -> measure(Tail, Head, Acc + 1);
       Head =< Prev -> measure(Tail, Head, Acc)
    end.
    
